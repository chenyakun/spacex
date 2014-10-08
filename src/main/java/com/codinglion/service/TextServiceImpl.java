package com.codinglion.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.codinglion.dao.TextDAO;
import com.codinglion.model.Text;

@Service
@Transactional
public class TextServiceImpl implements TextService {

    @Autowired
    private TextDAO textDAO;

    public void addText(Text text) {
        textDAO.addText(text);
    }

    public void updateText(Text text) {
        textDAO.updateText(text);
    }

    public Text getText(int id) {
        return textDAO.getText(id);
    }

    public void deleteText(int id) {
        textDAO.deleteText(id);
    }

    public List<Text> getTexts() {
        return textDAO.getTexts();
    }


}
