package org.kh.meme.rank.domain;

import java.sql.Date;

public class QuizRank {
	private String memberId;
	private int quizBestscore;
	private Date quizBestdate;
	private int quizRank;
	
	public QuizRank() {
		
	}

	
	public QuizRank(String memberId, int quizBestscore, Date quizBestdate, int quizRank) {
		super();
		this.memberId = memberId;
		this.quizBestscore = quizBestscore;
		this.quizBestdate = quizBestdate;
		this.quizRank = quizRank;
	}


	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getQuizBestscore() {
		return quizBestscore;
	}

	public void setQuizBestscore(int quizBestscore) {
		this.quizBestscore = quizBestscore;
	}

	public Date getQuizBestdate() {
		return quizBestdate;
	}

	public void setQuizBestdate(Date quizBestdate) {
		this.quizBestdate = quizBestdate;
	}

	public int getQuizRank() {
		return quizRank;
	}

	public void setQuizRank(int quizRank) {
		this.quizRank = quizRank;
	}

	@Override
	public String toString() {
		return "QuizRank [memberId=" + memberId + ", quizBestscore=" + quizBestscore + ", quizBestdate=" + quizBestdate
				+ ", quizRank=" + quizRank + "]";
	}
	
	
	
	
	
	
}
