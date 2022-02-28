package org.kh.meme.quiz.domain;

public class QuizFile {
	private int quizNo;
	private int quizFileNo;
	private String quizFileName;
	private String quizFileExtension;
	private String quizFileRename;
	
	public QuizFile() {}

	public int getQuizNo() {
		return quizNo;
	}

	public void setQuizNo(int quizNo) {
		this.quizNo = quizNo;
	}

	public int getQuizFileNo() {
		return quizFileNo;
	}

	public void setQuizFileNo(int quizFileNo) {
		this.quizFileNo = quizFileNo;
	}

	public String getQuizFileName() {
		return quizFileName;
	}

	public void setQuizFileName(String quizFileName) {
		this.quizFileName = quizFileName;
	}

	public String getQuizFileExtension() {
		return quizFileExtension;
	}

	public void setQuizFileExtension(String quizFileExtension) {
		this.quizFileExtension = quizFileExtension;
	}

	public String getQuizFileRename() {
		return quizFileRename;
	}

	public void setQuizFileRename(String quizFileRename) {
		this.quizFileRename = quizFileRename;
	}
	
	
	
}
