package org.kh.meme.board.domain;

public class Recommend {
	private int boardNo;
	private String recommendId;
	
	public Recommend() {}
	
	public Recommend(int boardNo, String recommendId) {
		super();
		this.boardNo = boardNo;
		this.recommendId = recommendId;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getRecommendId() {
		return recommendId;
	}

	public void setRecommendId(String recommendId) {
		this.recommendId = recommendId;
	}

	@Override
	public String toString() {
		return "Recommend [boardNo=" + boardNo + ", recommendId=" + recommendId + "]";
	}
	
	
}
