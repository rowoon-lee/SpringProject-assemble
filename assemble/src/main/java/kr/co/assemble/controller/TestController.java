package kr.co.assemble.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.xml.internal.ws.dump.MessageDumping;

import kr.co.assemble.dao.CategoryDAO;
import kr.co.assemble.dao.GroupDAO;
import kr.co.assemble.dto.CategoryDTO;
import kr.co.assemble.dto.GroupDTO;

@Controller
public class TestController {

	@Autowired
	GroupDAO dao2;

	@RequestMapping(value = "/w3s")
	public String w3s(Model model) {
		return "w3s";
	}
	
	@RequestMapping(value = "/assemble.io/avengers/home")
	public String home(Model model) {
		
		List<GroupDTO> groupList = dao2.selectGroup();
		model.addAttribute("groupList", groupList);
		
		return "home";
		
	}
	
	@RequestMapping("/assemble.io/avengers/g/{groupname}/wall")
	public String groupBoard(@PathVariable String groupname) throws Exception{
		
		System.out.println(groupname);
		
		return "wall";
	}
	
	
}

