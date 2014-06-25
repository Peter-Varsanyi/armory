package com.armory.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.armory.domain.Parser;

@Controller
@Scope("session")
public class HomeController {

    private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping("/")
    public String home(final Model model, final HttpServletRequest request, final HttpSession session) {
        model.addAttribute("lastUpdate", new Date());
        return "index";
    }

    @RequestMapping("/start")
    public String startCheck(final Model model, final HttpSession session) {
        final Parser p = new Parser();
        try {
            final List<String> guildmembers = p.getNamesBasedOnRank("Feritas", "Ragnaros", 2);
            session.setAttribute("progress", guildmembers);

        } catch (final IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return "start";
    }

}
