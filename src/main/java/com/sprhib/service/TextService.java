package com.sprhib.service;

import java.util.List;

import com.sprhib.model.Text;

public interface TextService {
	
	public void addText(Text text);
	public void updateText(Text text);
	public Text getText(int id);
	public void deleteText(int id);
	public List<Text> getTexts();

}
