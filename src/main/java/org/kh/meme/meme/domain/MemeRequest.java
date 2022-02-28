package org.kh.meme.meme.domain;

public class MemeRequest {

	private int memeReqNo;
	private int memeNo;
	private String memeRequestType;
	private String memeRequestContents;
	private String memeRequestStatus;
	
	public MemeRequest() {}

	public int getMemeReqNo() {
		return memeReqNo;
	}

	public void setMemeReqNo(int memeReqNo) {
		this.memeReqNo = memeReqNo;
	}

	public int getMemeNo() {
		return memeNo;
	}

	public void setMemeNo(int memeNo) {
		this.memeNo = memeNo;
	}

	public String getMemeRequestType() {
		return memeRequestType;
	}

	public void setMemeRequestType(String memeRequestType) {
		this.memeRequestType = memeRequestType;
	}

	public String getMemeRequestContents() {
		return memeRequestContents;
	}

	public void setMemeRequestContents(String memeRequestContents) {
		this.memeRequestContents = memeRequestContents;
	}

	public String getMemeRequestStatus() {
		return memeRequestStatus;
	}

	public void setMemeRequestStatus(String memeRequestStatus) {
		this.memeRequestStatus = memeRequestStatus;
	}

	@Override
	public String toString() {
		return "MemeRequest [memeReqNo=" + memeReqNo + ", memeNo=" + memeNo + ", memeRequestType=" + memeRequestType
				+ ", memeRequestContents=" + memeRequestContents + ", memeRequestStatus=" + memeRequestStatus + "]";
	}
	
	
	
}
