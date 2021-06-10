package com.board.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.board.domain.MemberVO;
import com.board.domain.ProductVO;
import com.board.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {

	
	@Inject
	 private MemberService service;
	
	// 회원가입 get
		@RequestMapping(value = "/register", method = RequestMethod.GET)
		public void getRegister() throws Exception {
			
		}
		
		// 회원가입 post
		@RequestMapping(value = "/register", method = RequestMethod.POST)
		public String postRegister(MemberVO vo) throws Exception {
			
			service.register(vo);
			
			return "redirect:/";
		}
		
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public void getlogin() throws Exception {
			
		}
		
		@RequestMapping(value = "/login",method =  RequestMethod.POST)
		public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
			
			
			HttpSession session = req.getSession();
			MemberVO login = service.login(vo);
			
			if(login == null) {
				session.setAttribute("member", null);
				rttr.addFlashAttribute("msg", false);
			}else {
				session.setAttribute("member", login);
				return "redirect:/";
			}
			
			return null;
		}
		
		@RequestMapping(value = "/logout", method = RequestMethod.GET)
		public String logout(HttpSession session) throws Exception{
			
			session.invalidate();
			
			return "redirect:/";
		}
		
		// 유저 보기
				 @RequestMapping(value = "/UserInfoForm", method = RequestMethod.GET)
				 public void getInfo(HttpSession session) throws Exception {

				 }
		
				
}
