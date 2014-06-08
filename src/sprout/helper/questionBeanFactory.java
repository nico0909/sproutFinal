package sprout.helper;

import sprout.model.questionBean;


public class questionBeanFactory {

	public static questionBean getQuestionBean(int getQuestionID,String getQuestion,String getAnswer)
	{
		questionBean question=new questionBean();
		question.setId(getQuestionID);
		question.setQuestion(getQuestion);
		question.setAnswer(getAnswer);
		return question;
	}
	
	
	
	
}
