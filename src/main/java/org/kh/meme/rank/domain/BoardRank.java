package org.kh.meme.rank.domain;

public class BoardRank {
	
	private String boardType;
	private String boardTitle;
	private int boardLike;
	private int boardRank;
	
	public BoardRank() {
		
	}
	
	public BoardRank(String boardType, String boardTitle, int boardLike, int boardRank) {
		super();
		this.boardType = boardType;
		this.boardTitle = boardTitle;
		this.boardLike = boardLike;
		this.boardRank = boardRank;
	}
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public int getBoardLike() {
		return boardLike;
	}
	public void setBoardLike(int boardLike) {
		this.boardLike = boardLike;
	}
	public int getBoardRank() {
		return boardRank;
	}
	public void setBoardRank(int boardRank) {
		this.boardRank = boardRank;
	}
	@Override
	public String toString() {
		return "BoardRank [boardType=" + boardType + ", boardTitle=" + boardTitle + ", boardLike=" + boardLike
				+ ", boardRank=" + boardRank + "]";
	}
	
	
}
