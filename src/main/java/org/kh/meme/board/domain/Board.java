package org.kh.meme.board.domain;

import java.sql.Date;

public class Board {
	private int boardNo;
	private String boardType;
	private String boardTitle;
	private String memberNickname;
	private Date boardDate;
	private Date boardReDate;
	private String boardContents;
	private int boardCount;
	private int boardLike;
	private int boardReport;
	private String boardStatus;
	
	public Board() {}

	public Board(int boardNo, String boardType, String boardTitle, String memberNickname, Date boardDate,
			Date boardReDate, String boardContents, int boardCount, int boardLike, int boardReport,
			String boardStatus) {
		super();
		this.boardNo = boardNo;
		this.boardType = boardType;
		this.boardTitle = boardTitle;
		this.memberNickname = memberNickname;
		this.boardDate = boardDate;
		this.boardReDate = boardReDate;
		this.boardContents = boardContents;
		this.boardCount = boardCount;
		this.boardLike = boardLike;
		this.boardReport = boardReport;
		this.boardStatus = boardStatus;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
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

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public Date getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}

	public Date getBoardReDate() {
		return boardReDate;
	}

	public void setBoardReDate(Date boardReDate) {
		this.boardReDate = boardReDate;
	}

	public String getBoardContents() {
		return boardContents;
	}

	public void setBoardContents(String boardContents) {
		this.boardContents = boardContents;
	}

	public int getBoardCount() {
		return boardCount;
	}

	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}

	public int getBoardLike() {
		return boardLike;
	}

	public void setBoardLike(int boardLike) {
		this.boardLike = boardLike;
	}

	public int getBoardReport() {
		return boardReport;
	}

	public void setBoardReport(int boardReport) {
		this.boardReport = boardReport;
	}

	public String getBoardStatus() {
		return boardStatus;
	}

	public void setBoardStatus(String boardStatus) {
		this.boardStatus = boardStatus;
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", boardType=" + boardType + ", boardTitle=" + boardTitle
				+ ", memberNickname=" + memberNickname + ", boardDate=" + boardDate + ", boardReDate=" + boardReDate
				+ ", boardContents=" + boardContents + ", boardCount=" + boardCount + ", boardLike=" + boardLike
				+ ", boardReport=" + boardReport + ", boardStatus=" + boardStatus + "]";
	}
	
	
	
}
