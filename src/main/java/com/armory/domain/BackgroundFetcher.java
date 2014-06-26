package com.armory.domain;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BackgroundFetcher implements Runnable {
    private List<String> members;

    private final List<Character> characters = new ArrayList<Character>();

    private static final Logger LOGGER = LoggerFactory.getLogger(BackgroundFetcher.class);

    private final Parser p = new Parser();

    public BackgroundFetcher() {
        final List<Integer> ranksToCheck = new ArrayList<Integer>();
        ranksToCheck.add(0);
        ranksToCheck.add(1);
        ranksToCheck.add(3);
        ranksToCheck.add(5);
        ranksToCheck.add(6);
        //        ranksToCheck.add(3);
        try {
            members = p.getNamesBasedOnRank("Feritas", "Ragnaros", ranksToCheck);
        } catch (final IOException e) {
            e.printStackTrace();
        }
    }

    public List<String> getMembers() {
        return members;
    }

    public List<Character> getCharacters() {
        return characters;
    }

    @Override
    public void run() {
        for (final String memberName : members) {
            LOGGER.debug("Fetching: {}", memberName);
            characters.add(p.getCharacter(memberName));
        }
    }

}
