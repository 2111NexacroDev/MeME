package org.kh.meme.quiz.domain;

import java.sql.Date;

public class Quiz {
	private int quizNo;
	private String quizType;
	private String quizQuest;
	private String quizAnswer;
	private String memberId;
	private Date quizDate;
	private String quizCh1;
	private String quizCh2;
	private String quizCh3;
	private String quizCh4;
	
	public Quiz() {}

	public int getQuizNo() {
		return quizNo;
	}

	public void setQuizNo(int quizNo) {
		this.quizNo = quizNo;
	}

	public String getQuizType() {
		return quizType;
	}

	public void setQuizType(String quizType) {
		this.quizType = quizType;
	}

	public String getQuizQuest() {
		return quizQuest;
	}

	public void setQuizQuest(String quizQuest) {
		this.quizQuest = quizQuest;
	}

	public String getQuizAnswer() {
		return quizAnswer;
	}

	public void setQuizAnswer(String quizAnswer) {
		this.quizAnswer = quizAnswer;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public Date getQuizDate() {
		return quizDate;
	}

	public void setQuizDate(Date quizDate) {
		this.quizDate = quizDate;
	}

	public String getQuizCh1() {
		return quizCh1;
	}

	public void setQuizCh1(String quizCh1) {
		this.quizCh1 = quizCh1;
	}

	public String getQuizCh2() {
		return quizCh2;
	}

	public void setQuizCh2(String quizCh2) {
		this.quizCh2 = quizCh2;
	}

	public String getQuizCh3() {
		return quizCh3;
	}

	public void setQuizCh3(String quizCh3) {
		this.quizCh3 = quizCh3;
	}

	public String getQuizCh4() {
		return quizCh4;
	}

	public void setQuizCh4(String quizCh4) {
		this.quizCh4 = quizCh4;
	}
	
	
	
}
