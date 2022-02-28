package org.kh.meme.board.domain;

public class BoardFile {
	private int boardNo;
	private int boardFileNo;
	private String boardFilename;
	private String boardFilerename;
	private String boardFileextension;
	
	public BoardFile() {}
	
	public BoardFile(int boardNo, int boardFileNo, String boardFilename, String boardFilerename,
			String boardFileextension) {
		super();
		this.boardNo = boardNo;
		this.boardFileNo = boardFileNo;
		this.boardFilename = boardFilename;
		this.boardFilerename = boardFilerename;
		this.boardFileextension = boardFileextension;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public int getBoardFileNo() {
		return boardFileNo;
	}

	public void setBoardFileNo(int boardFileNo) {
		this.boardFileNo = boardFileNo;
	}

	public String getBoardFilename() {
		return boardFilename;
	}

	public void setBoardFilename(String boardFilename) {
		this.boardFilename = boardFilename;
	}

	public String getBoardFilerename() {
		return boardFilerename;
	}

	public void setBoardFilerename(String boardFilerename) {
		this.boardFilerename = boardFilerename;
	}

	public String getBoardFileextension() {
		return boardFileextension;
	}

	public void setBoardFileextension(String boardFileextension) {
		this.boardFileextension = boardFileextension;
	}

	@Override
	public String toString() {
		return "BoardFile [boardNo=" + boardNo + ", boardFileNo=" + boardFileNo + ", boardFilename=" + boardFilename
				+ ", boardFilerename=" + boardFilerename + ", boardFileextension=" + boardFileextension + "]";
	}
	
	
	
}
