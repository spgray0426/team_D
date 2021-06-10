package com.board.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.domain.ProductVO;
@Repository
public class ProductDAOImpl implements ProductDAO {

	@Inject
	 private SqlSession sql;
	 
	 private static String namespace = "com.board.mappers.product";
	 
	@Override
	public List<ProductVO> productlist() throws Exception {
		
		return sql.selectList(namespace + ".Product_List");
	}

	@Override
	public void productadd(ProductVO vo) throws Exception {
		sql.insert(namespace + ".Product_add", vo);
		
	}

	// 게시물 조회x
	public ProductVO pview(int bno) throws Exception {
	 
	 return sql.selectOne(namespace + ".pview", bno);
	}
	
	// 게시물 수정
	@Override
	public void pmodify(ProductVO vo) throws Exception {
	 sql.update(namespace + ".pmodify", vo);
	}
	
	// 게시물 삭제
	public void pdelete(int bno) throws Exception {
	 sql.delete(namespace + ".Product_delete", bno);
	}
	
	// 게시물 총 갯수
	@Override
	public int count(String searchType, String keyword) throws Exception {
		HashMap<String, Object> data = new HashMap<String, Object>();
		 
		 data.put("searchType", searchType);
		 data.put("keyword", keyword);
	 return sql.selectOne(namespace + ".count",data); 
	}
	
	// 게시물 목록 + 페이징
	@Override
	public List<ProductVO> productlistPage(int displayPost, int postNum, String searchType, String keyword) throws Exception {

		HashMap<String, Object> data = new HashMap<String, Object>();
		  
		  data.put("displayPost", displayPost);
		  data.put("postNum", postNum);
		  
		  data.put("searchType", searchType);
		  data.put("keyword", keyword);
		  
		  return sql.selectList(namespace + ".Product_ListPage", data);
	}
	
	// // 팝업 수정
		@Override
		public void ppop(ProductVO vo) throws Exception {
		 sql.update(namespace + ".ppop", vo);
		}
}
