package com.board.service;

import java.util.List;

import com.board.domain.ProductVO;

public interface ProductService {
	//제품 목록
	public List<ProductVO> productlist() throws Exception; 
	
	// 제품 추가
	public void productadd(ProductVO vo) throws Exception;

	// 게시물 조회x
	public ProductVO pview(int bno) throws Exception;

	// 게시물 수정
	public void pmodify(ProductVO vo) throws Exception;
	
	// 게시뮬 삭제
	public void pdelete(int bno) throws Exception;
	
	// 게시물 총 갯수
	public int count(String searchType, String keyword) throws Exception;
	
	// 게시물 목록 + 페이징
	public List<ProductVO> productlistPage(int displayPost, int postNum, String searchType, String keyword) throws Exception;
	
	// 팝업 수정
		public void ppop(ProductVO vo) throws Exception;
}
