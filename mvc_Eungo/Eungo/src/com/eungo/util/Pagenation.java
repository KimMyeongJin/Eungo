package com.eungo.util;

import java.util.LinkedHashMap;
import java.util.Map;

public class Pagenation {
	public Map<String, Integer> pagenation(int per_page, int pageNum, int totalNum) {
		
		Map<String, Integer> paging = new LinkedHashMap<String, Integer>();
		if (totalNum != 0) {
			int totalPage = 0;
			if (totalNum % per_page == 0) {
				totalPage = totalNum / per_page;
			} else {
				totalPage = (totalNum / per_page) + 1;
			}

			int pagenation = 0;

			if (totalPage % 4 == 0) {
				pagenation = totalPage / 4;
			} else {
				pagenation = (totalPage / 4) + 1;
			}

			int currentPagenation = 0;
			if (pageNum % 4 == 0) {
				currentPagenation = pageNum / 4;
			} else {
				currentPagenation = (pageNum / 4) + 1;
			}

			if (currentPagenation < pagenation) {
				if (((currentPagenation - 1) * 4) == 0) {
					for (int i = ((currentPagenation - 1) * 4) + 1; i <= currentPagenation * 4; i++) {
						String istr = i + "";
						paging.put(istr, i);
					}
					paging.put("next", (currentPagenation * 4) + 1);
					// paging.put("end", totalPage); 맨끝페이지로 이동하는 옵션 잠시봉인
				} else if (currentPagenation > 0) {
					paging.put("pre", (currentPagenation - 1) * 4);
					for (int i = ((currentPagenation - 1) * 4) + 1; i <= currentPagenation * 4; i++) {
						String istr = i + "";
						paging.put(istr, i);
					}
					paging.put("next", (currentPagenation * 4) + 1);
					// paging.put("end", totalPage); 맨끝페이지로 이동하는 옵션 잠시봉인
				}
			} else if (currentPagenation == pagenation) {
				if (pagenation == 1) {
					for (int i = 1; i <= totalPage; i++) {
						String istr = i + "";
						paging.put(istr, i);
					}

				} else {
					// paging.put("first", 1); 맨처음 페이지로 이동하는 옵션 잠시봉인
					paging.put("pre", (currentPagenation - 1) * 4);
					for (int i = ((currentPagenation - 1) * 4) + 1; i <= totalPage; i++) {
						String istr = i + "";
						paging.put(istr, i);
					}
				}
			}
			return paging;
		}else {
			paging.put("null", 1);
			return paging;
		}
	}
}
