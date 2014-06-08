package sprout.model;

import java.util.ArrayList;

public class questionBean {

	
	
	int id;
	String question;
	String answer;
	private ArrayList<questionBean> bean;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public ArrayList<questionBean> getBean() {
		return bean;
	}
	public void setBean(ArrayList<questionBean> bean) {
		this.bean = bean;
	}
	
}
