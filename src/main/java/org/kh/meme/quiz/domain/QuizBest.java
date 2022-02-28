package org.kh.meme.quiz.domain;

import java.sql.Date;

import org.mybatis.spring.SqlSessionTemplate;

public class QuizBest {
	private String memberId;
	private int bestScore;
	private Date bestDate;
	
	public QuizBest() {}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getBestScore() {
		return bestScore;
	}

	public void setBestScore(int bestScore) {
		this.bestScore = bestScore;
	}

	public Date getBestDate() {
		return bestDate;
	}

	public void setBestDate(Date bestDate) {
		this.bestDate = bestDate;
	}
	
}
