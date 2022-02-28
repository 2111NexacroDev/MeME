package org.kh.meme.meme.domain;

public class MemeFile {
	private int memeNo;
	private int memeFileNo;
	private String memeFileName;
	private String memeFileExtension;
	private String memeFileRename;
	
	public MemeFile() {}

	public int getMemeNo() {
		return memeNo;
	}

	public void setMemeNo(int memeNo) {
		this.memeNo = memeNo;
	}

	public int getMemeFileNo() {
		return memeFileNo;
	}

	public void setMemeFileNo(int memeFileNo) {
		this.memeFileNo = memeFileNo;
	}

	public String getMemeFileName() {
		return memeFileName;
	}

	public void setMemeFileName(String memeFileName) {
		this.memeFileName = memeFileName;
	}

	public String getMemeFileExtension() {
		return memeFileExtension;
	}

	public void setMemeFileExtension(String memeFileExtension) {
		this.memeFileExtension = memeFileExtension;
	}

	public String getMemeFileRename() {
		return memeFileRename;
	}

	public void setMemeFileRename(String memeFileRename) {
		this.memeFileRename = memeFileRename;
	}

	@Override
	public String toString() {
		return "MemeFile [memeNo=" + memeNo + ", memeFileNo=" + memeFileNo + ", memeFileName=" + memeFileName
				+ ", memeFileExtension=" + memeFileExtension + ", memeFileRename=" + memeFileRename + "]";
	}
	
	

	

	
	
	
	
}
