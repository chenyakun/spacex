package com.codinglion.controller;

import com.codinglion.model.Text;
import com.codinglion.service.TextService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/text")
public class TextController {

    @Autowired
    private TextService textService;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView addTextPage() {
        ModelAndView modelAndView = new ModelAndView("add-text-form");
        modelAndView.addObject("text", new Text());
        return modelAndView;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public ModelAndView addingText(@ModelAttribute Text text) {

        ModelAndView modelAndView = new ModelAndView("home");
        text.setDtime(new Date());
        textService.addText(text);

        String message = "Text was successfully added.";
        modelAndView.addObject("message", message);

        return modelAndView;
    }

    @RequestMapping(value = "/list")
    public ModelAndView listOfTexts() {
        ModelAndView modelAndView = new ModelAndView("list-of-essay");

        List<Text> texts = textService.getTexts();
        modelAndView.addObject("texts", texts);

        return modelAndView;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView editTextPage(@PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("edit-text-form");
        Text text = textService.getText(id);
        modelAndView.addObject("text", text);
        return modelAndView;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public ModelAndView edditingText(@ModelAttribute Text text, @PathVariable Integer id) {

        ModelAndView modelAndView = new ModelAndView("home");
        text.setDtime(new Date());
        textService.updateText(text);

        String message = "Text was successfully edited.";
        modelAndView.addObject("message", message);

        return modelAndView;
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteText(@PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("home");
        textService.deleteText(id);
        String message = "Text was successfully deleted.";
        modelAndView.addObject("message", message);
        return modelAndView;
    }

}
