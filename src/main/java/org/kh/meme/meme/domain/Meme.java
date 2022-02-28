package org.kh.meme.meme.domain;

import java.sql.Date;

public class Meme {
	private int memeNo;
	private String memeName;
	private Date memeDate;
	private String memeContents;
	private String memberNickname;
	private int memeCount;
	private String memeStatus;
	
	public Meme() {}

	public int getMemeNo() {
		return memeNo;
	}

	public void setMemeNo(int memeNo) {
		this.memeNo = memeNo;
	}

	public String getMemeName() {
		return memeName;
	}

	public void setMemeName(String memeName) {
		this.memeName = memeName;
	}

	public Date getMemeDate() {
		return memeDate;
	}

	public void setMemeDate(Date memeDate) {
		this.memeDate = memeDate;
	}

	public String getMemeContents() {
		return memeContents;
	}

	public void setMemeContents(String memeContents) {
		this.memeContents = memeContents;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public int getMemeCount() {
		return memeCount;
	}

	public void setMemeCount(int memeCount) {
		this.memeCount = memeCount;
	}

	public String getMemeStatus() {
		return memeStatus;
	}

	public void setMemeStatus(String memeStatus) {
		this.memeStatus = memeStatus;
	}

	@Override
	public String toString() {
		return "Meme [memeNo=" + memeNo + ", memeName=" + memeName + ", memeDate=" + memeDate + ", memeContents="
				+ memeContents + ", memberNickname=" + memberNickname + ", memeCount=" + memeCount + ", memeStatus="
				+ memeStatus + "]";
	}
	
	

}
