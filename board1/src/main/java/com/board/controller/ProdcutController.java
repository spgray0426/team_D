package com.board.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.domain.Page;
import com.board.domain.ProductVO;
import com.board.service.ProductService;

@Controller
@RequestMapping("/product/")
public class ProdcutController {
	
	 @Inject
	 private ProductService service;
	
	
	 //제품 등록
	 @RequestMapping(value = "/Product_addForm", method = RequestMethod.GET)
	 public void getWirte(HttpSession session) throws Exception {
	    
	 }
	 //제품 등록
	 @RequestMapping(value = "/Product_addForm", method = RequestMethod.POST)
	 public String posttWirte(ProductVO vo) throws Exception {
	   service.productadd(vo);
	   
	   return "redirect:/product/productlistPage?num=1";
	 }
	
	// 제품 보기
		 @RequestMapping(value = "/ProductDetailForm", method = RequestMethod.GET)
		 public void getView(HttpSession session,@RequestParam("bno")int bno,Model model) throws Exception {

			 ProductVO vo= service.pview(bno);
			 
			 model.addAttribute("pview", vo);
		 }
		 
		 
	// 제품 수정
	 @RequestMapping(value = "/ProductModifyForm", method = RequestMethod.GET)
	 public void getModify(HttpSession session,@RequestParam("bno")int bno,Model model) throws Exception {

		 ProductVO vo= service.pview(bno);
		 
		 model.addAttribute("pview", vo);
	 }
	 
	// 제품 수정
	 @RequestMapping(value = "/ProductModifyForm", method = RequestMethod.POST)
	 public String postModify(ProductVO vo) throws Exception {

	  service.pmodify(vo);
	    
	  return "redirect:/product/ProductDetailForm?bno=" + vo.getBno();
	 }
	 
	// 게시물 삭제
	 @RequestMapping(value = "/Productdelete", method = RequestMethod.GET)
	 public String getDelete(HttpSession session,@RequestParam("bno") int bno) throws Exception {
	   
	  service.pdelete(bno);  

	  return "redirect:/product/productlistPage?num=1";
	 }
	 
	// 게시물 목록
	 @RequestMapping(value = "/productlistPage", method = RequestMethod.GET)
	 public void getproductlistPage(HttpSession session,Model model, @RequestParam("num") int num,
			 @RequestParam(value = "searchType",required = false, defaultValue = "bno") String searchType,
			   @RequestParam(value = "keyword",required = false, defaultValue = "") String keyword
		) throws Exception {
		Page page = new Page();
		 
		page.setNum(num);
		page.setCount(service.count(searchType, keyword));  
		
		// 검색 타입과 검색어
		
		
		List<ProductVO> productlist = null; 
		productlist = service.productlistPage(page.getDisplayPost(), page.getPostNum(), searchType, keyword);

		model.addAttribute("productlist", productlist);   
		model.addAttribute("page", page);
		model.addAttribute("select", num);
		
		page.setSearchType(searchType);
		page.setKeyword(keyword);
		
			 }
	 
	 //팝업
	 @RequestMapping(value = "/Product_popup", method = RequestMethod.GET)
	 public void getpopup(HttpSession session) throws Exception {
	    
	 }
	 
	// 팝업 수정
		 @RequestMapping(value = "/Product_popup", method = RequestMethod.POST)
		 public String postpopup(ProductVO vo) throws Exception {

		  service.ppop(vo);

		  return null;
		 }

}
