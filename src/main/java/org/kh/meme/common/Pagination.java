package org.kh.meme.common;


public class Pagination {
	public static PageInfo getPageInfo(int currentPage, int totalCount) {
		PageInfo pi = null;

		int boardLimit = 10;
		int naviLimit = 5;
		int maxPage;
		int startNavi;
		int endNavi;
		

		// 23/5 = 4.8
		// int끼리 연산하면 4가 나오지만, 4.8이 나오도록 하기 위해서 (double) 형변환
		// + 0.9를 하면 5를 넘어서게 됨.
		// = 5.7, 여기서 소수점이 필요없으니까 int로 강제 형변환
		
		maxPage = (int)((double)totalCount/boardLimit + 0.9);
		
		// 1 -> 1 ~ 5, 6 -> 6 ~ 10, 11 -> 11 ~ 15
		// 6 + 5 - 1 => 10
		//1 -> 1 2 3 4 5, 6 <- 6 ~ 10, 11 <- 11 ~ 15
		startNavi = (((int)((double)currentPage/naviLimit+0.9))-1) * naviLimit + 1;
		endNavi = startNavi + naviLimit - 1;
		
		if(maxPage < endNavi) {
			endNavi = maxPage;
		}
		
		pi = new PageInfo(currentPage, boardLimit, 
				naviLimit, startNavi, endNavi, totalCount, maxPage);
		
		return pi;
	}

}
