package com.sprhib.dao;

import java.util.List;

import com.sprhib.model.Text;

public interface TextDAO {
	
	public void addText(Text Text);
	public void updateText(Text Text);
	public Text getText(int id);
	public void deleteText(int id);
	public List<Text> getTexts();

}
