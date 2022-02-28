package org.kh.meme.quiz.domain;

import java.sql.Date;

public class QuizReport {
	private int reportNo;
	private String reportId;
	private String reportContents;
	private Date reportDate;
	private int quizNo;
	
	public QuizReport() {}

	public int getReportNo() {
		return reportNo;
	}

	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}

	public String getReportId() {
		return reportId;
	}

	public void setReportId(String reportId) {
		this.reportId = reportId;
	}

	public String getReportContents() {
		return reportContents;
	}

	public void setReportContents(String reportContents) {
		this.reportContents = reportContents;
	}

	public Date getReportDate() {
		return reportDate;
	}

	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}

	public int getQuizNo() {
		return quizNo;
	}

	public void setQuizNo(int quizNo) {
		this.quizNo = quizNo;
	}
	
	
}
