package org.kh.meme.rank.domain;

public class MemeRank {
	private String memeStatus;
	private String memeName;
	private int memeCount;
	private int memeRank;
	
	public MemeRank() {}
	
	public MemeRank(String memeStatus, String memeName, int memeCount, int memeRank) {
		super();
		this.memeStatus = memeStatus;
		this.memeName = memeName;
		this.memeCount = memeCount;
		this.memeRank = memeRank;
	}
	
	public String getMemeStatus() {
		return memeStatus;
	}
	public void setMemeStatus(String memeStatus) {
		this.memeStatus = memeStatus;
	}
	public String getMemeName() {
		return memeName;
	}
	public void setMemeName(String memeName) {
		this.memeName = memeName;
	}
	public int getMemeCount() {
		return memeCount;
	}
	public void setMemeCount(int memeCount) {
		this.memeCount = memeCount;
	}
	public int getMemeRank() {
		return memeRank;
	}
	public void setMemeRank(int memeRank) {
		this.memeRank = memeRank;
	}
	@Override
	public String toString() {
		return "MemeRank [memeStatus=" + memeStatus + ", memeName=" + memeName + ", memeCount=" + memeCount
				+ ", memeRank=" + memeRank + "]";
	}
	
	
}
