package org.kh.meme.board.domain;

public class Search {
	private String keyword;
	private String type;
	
	public Search() {
		
	}
	
	public Search(String keyword, String type) {
		super();
		this.keyword = keyword;
		this.type = type;
	}
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Search [keyword=" + keyword + ", type=" + type + "]";
	}
	
	
}
