package com.sprhib.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sprhib.model.Text;

@Repository
public class TextDAOImpl implements TextDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	public void addText(Text text) {
		getCurrentSession().save(text);
	}

	public void updateText(Text text) {
		Text textToUpdate = getText(text.getId());
		textToUpdate.setPid(text.getPid());
		textToUpdate.setTextContent(text.getTextContent());
		getCurrentSession().update(textToUpdate);
		
	}

	public Text getText(int id) {
		Text Text = (Text) getCurrentSession().get(Text.class, id);
		return Text;
	}

	public void deleteText(int id) {
		Text text = getText(id);
		if (text != null)
			getCurrentSession().delete(text);
	}

	@SuppressWarnings("unchecked")
	public List<Text> getTexts() {
		return getCurrentSession().createQuery("from Text").list();
	}

}
