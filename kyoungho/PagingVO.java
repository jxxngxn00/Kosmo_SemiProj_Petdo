package com.javaclass.domain;

import lombok.Data;

@Data
public class PagingVO {
	private int startPage;
	private int endPage;
	private boolean prev, next;
	private int total;
	private int pageNum;
	private int amount;

	//현재 페이지 번호, 한 페이지에 표출할 데이터 개수
	private Criteria cri;
	
	public PagingVO(Criteria cri, int total) {
		this.pageNum= cri.getPageNum();
		this.amount = cri.getAmount();
		this.cri = cri;
		this.total = total;
		
		//시작페이지, 마지막페이지 계산
		this.endPage = (int)(Math.ceil(this.cri.getPageNum() / 10.0)) * 10;
		this.startPage = this.endPage - 10 +1;
	
		System.out.println(startPage);
		System.out.println(endPage);
		int realEnd = (int)Math.ceil(this.total/ (double)this.amount);
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		//이전, 다음 버튼 표출 여부 결정
		this.prev = this.startPage >= 1;
		this.next = this.endPage < realEnd;
		System.out.println(prev);
		System.out.println(next);
	}
	
	@Override
	public String toString() {
		return "PageVO [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", total=" + total + "]";
	}
	
}