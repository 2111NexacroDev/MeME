package org.kh.meme.quiz.domain;

public class QuizCh {
	private int quizNo;
	private String quizCh1;
	private String quizCh2;
	private String quizCh3;
	private String quizCh4;
	
	public QuizCh() {}
	
	public int getQuizNo() {
		return quizNo;
	}
	public void setQuizNo(int quizNo) {
		this.quizNo = quizNo;
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

	@Override
	public String toString() {
		return "QuizCh [quizNo=" + quizNo + ", quizCh1=" + quizCh1 + ", quizCh2=" + quizCh2 + ", quizCh3=" + quizCh3
				+ ", quizCh4=" + quizCh4 + "]";
	}
	
	
}
