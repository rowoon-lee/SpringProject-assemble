package kr.co.assemble.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sun.xml.internal.ws.dump.MessageDumping;

import kr.co.assemble.dao.BoardDAO;
import kr.co.assemble.dao.CategoryDAO;
import kr.co.assemble.dao.GroupDAO;
import kr.co.assemble.dto.BoardDTO;
import kr.co.assemble.dto.CategoryDTO;
import kr.co.assemble.dto.GroupDTO;

@Controller
public class HomeController {

	@Autowired
	BoardDAO dao;

	//내가 속한 그룹의 전체 게시글 출력
	@RequestMapping(value = "/assemble.io/avengers/home")
	public String selectMyGroup(
			@RequestParam(value = "memberno") int memberno, Model model) {
		
		//멤버 넘버 세션에서 받아오기.
		List<BoardDTO> list = dao.selectMyFeed(memberno);
		model.addAttribute("mainlist", list);
		
		return "home";
	}
	

	/*
	 * @RequestMapping(value = "/assemble.io/avengers/home") public String
	 * home1(Model model) {
	 * 
	 * return "home";
	 * 
	 * }
	 */

	
}

