package com.epam.learn;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @RequestMapping(value="/", method = RequestMethod.GET)
    public ModelAndView visitHome() {
        return new ModelAndView("index");
    }

    @RequestMapping(value="/admin", method = RequestMethod.GET)
    public ModelAndView visitAdmin() {
        ModelAndView model = new ModelAndView("admin");

        model.addObject("title", "Administrator Control Panel");
        model.addObject("message", "This page demonstrates how to use Spring security.");

        return model;
    }

    @RequestMapping(value="/list", method = RequestMethod.GET)
    public ModelAndView visitList() {
        ModelAndView model = new ModelAndView("list");

        model.addObject("title", "List Page");
        model.addObject("message", "This is the LIST page - demonstrates how to use Spring security.");

        return model;
    }


    @RequestMapping(value="/secure/list-secure", method = RequestMethod.GET)
    public ModelAndView visitListSecure() {
        ModelAndView model = new ModelAndView("secure/list-secure");

        model.addObject("title", "List SECURE Page");
        model.addObject("message", "This is the LIST SECURE page - demonstrates how to use Spring security.");

        return model;
    }
}