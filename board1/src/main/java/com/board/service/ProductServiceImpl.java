package com.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.board.dao.ProductDAO;
import com.board.domain.ProductVO;

@Service
public class ProductServiceImpl implements ProductService {

	@Inject
	 private ProductDAO dao;
	
	//제품 목록
	@Override
	public List<ProductVO> productlist() throws Exception {
		 return dao.productlist();
	}
	//제품 추가
	@Override
	public void productadd(ProductVO vo) throws Exception {
		dao.productadd(vo);
		
	}
	
	// 게시물 조회 x
	@Override
	public ProductVO pview(int bno) throws Exception {

	 return dao.pview(bno);
	}
	
	
	// 게시물 수정
	@Override
	public void pmodify(ProductVO vo) throws Exception {
	  
	 dao.pmodify(vo);
	}
	
	// 게시물 삭제
	public void pdelete(int bno) throws Exception {
	 dao.pdelete(bno);
	}
	
	// 게시물 총 갯수
	@Override
	public int count(String searchType, String keyword) throws Exception {
	 return dao.count(searchType, keyword);
	}
	
	// 게시물 목록 + 페이징
	@Override
	public List<ProductVO> productlistPage(int displayPost, int postNum, String searchType, String keyword) throws Exception {
	 return dao.productlistPage(displayPost, postNum, searchType, keyword);
	}
	
	// 팝업 수정
		@Override
		public void ppop(ProductVO vo) throws Exception {
		  
		 dao.ppop(vo);
		}
		
	
}
