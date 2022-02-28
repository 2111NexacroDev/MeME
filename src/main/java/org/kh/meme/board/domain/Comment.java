package org.kh.meme.board.domain;

import java.sql.Date;

public class Comment {
	private int commentNo;
	private int boardNo;
	private int commentParentsno;
	private String memberNickname;
	private String commentContents;
	private Date commentDate;
	private Date commentRedate;
	private String commentStatus;

	public Comment() {
		
	}

	public Comment(int commentNo, int boardNo, int commentParentsno, String memberNickname, String commentContents,
			Date commentDate, Date commentRedate, String commentStatus) {
		super();
		this.commentNo = commentNo;
		this.boardNo = boardNo;
		this.commentParentsno = commentParentsno;
		this.memberNickname = memberNickname;
		this.commentContents = commentContents;
		this.commentDate = commentDate;
		this.commentRedate = commentRedate;
		this.commentStatus = commentStatus;
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getCommentParentsno() {
		return commentParentsno;
	}

	public void setCommentParentsno(int commentParentsno) {
		this.commentParentsno = commentParentsno;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getCommentContents() {
		return commentContents;
	}

	public void setCommentContents(String commentContents) {
		this.commentContents = commentContents;
	}

	public Date getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}

	public Date getCommentRedate() {
		return commentRedate;
	}

	public void setCommentRedate(Date commentRedate) {
		this.commentRedate = commentRedate;
	}

	public String getCommentStatus() {
		return commentStatus;
	}

	public void setCommentStatus(String commentStatus) {
		this.commentStatus = commentStatus;
	}

	@Override
	public String toString() {
		return "Comment [commentNo=" + commentNo + ", boardNo=" + boardNo + ", commentParentsno=" + commentParentsno
				+ ", memberNickname=" + memberNickname + ", commentContents=" + commentContents + ", commentDate="
				+ commentDate + ", commentRedate=" + commentRedate + ", commentStatus=" + commentStatus + "]";
	}
	
	
}