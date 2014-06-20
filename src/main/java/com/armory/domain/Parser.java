package com.armory.domain;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.jsoup.HttpStatusException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Parser {

    private static final Logger LOGGER = LoggerFactory.getLogger(Parser.class);

    public List<String> getNamesBasedOnRank(final String guildName, final String realmName, final Integer requiredRank) throws JsonParseException,
        JsonMappingException, MalformedURLException, IOException {
        final ObjectMapper mapper = new ObjectMapper();
        final Guild guild = mapper.readValue(new URL("http://eu.battle.net/api/wow/guild/" + realmName + "/Feritas?fields=members"), Guild.class);
        final List<String> matchedMembers = new ArrayList<>();
        for (final Member member : guild.getMembers()) {
            if (member.getRank() <= requiredRank) {
                final String name = (String) member.getCharacter().get("name");
                matchedMembers.add(name);
            }
        }
        return matchedMembers;
    }

    public Character getCharacter(final String name) throws IOException {

        LOGGER.debug("Getting character: {}", name);

        final String url = "http://eu.battle.net/wow/en/character/ragnaros/" + URLEncoder.encode(name, "UTF-8") + "/advanced";
        LOGGER.debug(url);
        Element document = null;
        try {
            document = Jsoup.connect(url).get();
        } catch (final HttpStatusException e) {
            LOGGER.error("Exception caught: {}", e);
            final Character dummy = new Character(name);
            dummy.addError("Parse error");
            return dummy;
        }
        final Elements errorList = document.select("ul.summary-audit-list li");

        final Integer currentItemLevel = Integer.valueOf(document.select("span.equipped").get(0).text());
        final Integer bestItemLevel = Integer.valueOf(document.select("div#summary-averageilvl-best").get(0).text());
        final Character character = new Character(name);
        character.setBestItemLevel(bestItemLevel);
        character.setCurrentItemLevel(currentItemLevel);
        LOGGER.debug("Created character: {}", character);

        for (final Element e : document.select("li[data-id]")) {
            final String statName = e.select("span.name").get(0).text();
            final String value = e.select("span.value").get(0).text();
            LOGGER.debug("Adding stat: {} with value: {}", statName, value);

            character.addStat(statName, value);
        }
        for (final Element error : errorList) {
            LOGGER.debug("Adding error: {}", error.text());
            character.addError(error.text());
        }
        return character;

    }

    public void Parse() throws IOException {
        final List<String> guildMembers = getNamesBasedOnRank("Feritas", "Ragnaros", 2);
        final List<Character> characters = new ArrayList<>();
        for (final String name : guildMembers) {
            final Character character = getCharacter(name);
            characters.add(character);
        }
        final ObjectMapper mapper = new ObjectMapper();
        mapper.writerWithDefaultPrettyPrinter().writeValue(new File("d:\\errors.json"), characters);
    }
}
