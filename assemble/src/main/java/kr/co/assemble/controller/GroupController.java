package kr.co.assemble.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.assemble.dao.ComposedDAO;
import kr.co.assemble.dao.GroupDAO;
import kr.co.assemble.dto.AssembleGroupDTO;
import kr.co.assemble.dto.ComposedDTO;
import kr.co.assemble.dto.GroupDTO;

@Controller
public class GroupController {	
	
	@Autowired
	GroupDAO dao;
	
	@Autowired
	ComposedDAO cdao;
	
	
	public void setDao(GroupDAO dao) {
		this.dao = dao;
	}
	
	public void setCdao(ComposedDAO cdao) {
		this.cdao = cdao;
	}
	
	
	//그룹 전체 조회													===> 첫 홈에서 누르면 load 해놓음
	@RequestMapping(value = "/attendgroups")
	public String attendgroups(Model model, HttpSession session) {
		
		String assemblename = (String)session.getAttribute("mi_assembleName");
		int memberno = (int)session.getAttribute("memberno");
		
		AssembleGroupDTO dto = new AssembleGroupDTO();
		dto.setAssemblename(assemblename);
		
		model.addAttribute("memberno", memberno);
		
		List<AssembleGroupDTO> list = dao.selectGroup(dto);
		model.addAttribute("list", list);

		
		
		return "jisoo/attendgroups";
	}
	
	
	
	//그룹 만들기 폼
	@RequestMapping(value = "/makeGroup")
	public String makeGroup() {
		
		return "jinwoo/groupMake";
	}
	
	
	//그룹만들어지고나서 이동하는 페이지
	@RequestMapping(value = "/insertGroupOk")
	public String makeGroup(
			@RequestParam (value = "grName") String name, Model model) {
		
		GroupDTO dto = new GroupDTO();
		
		//멤버넘버 세션에서 받아오기
		dto.setMemberno(2);
		dto.setGroupname(name);
		dao.insertGroup(dto);
		
		model.addAttribute("dto", dto);
		
		return "group/insertGroupOk";
	}
	
	
	//그룹 카테고리 변경을 위한 폼
	@RequestMapping(value = "/updateGroup")
	public String changeCategory() {
		
		return "group/changeCategory";
	}
	
	
	//그룹 카테고리 변경 완료를 위해 이동하는 페이지.
	@RequestMapping(value = "/updateGroupOk")
	public String changeCategoryOk(
			@RequestParam(value = "groupNum") int num,
			@RequestParam(value = "cgGroupNum") int cgnum, Model model) {
		
		//카테고리번호, 그룹번호, 웹에서 가져오기 - 선택한것이 들어오게
		GroupDTO dto = new GroupDTO();
		
		dto.setCategoryno(cgnum);
		dto.setGroupno(num);
		
		dao.updateOne(dto);
		model.addAttribute("dto", dto);	
		
		
		return "group/changeCategoryOk";
	}
	
	
	//그룹이름 변경 폼
	@RequestMapping(value = "/changeGroupName")
	public String changeName() {
		return "group/changeGroupName";
	}
	
	
	//그룹 이름 변경하는 페이지
	@RequestMapping(value = "/changeGroupNameOk")
	public String changeNameOk(
			@RequestParam(value = "cgNum")int num1,
			@RequestParam(value = "grNum")int num2,
			@RequestParam(value = "grName")String name, Model model) {
		
		GroupDTO dto = new GroupDTO();
		
		dto.setCategoryno(num1);
		dto.setGroupno(num2);
		dto.setGroupname(name);
		
		dao.updateName(dto);
		model.addAttribute("dto", dto);
		
		return "group/changeGroupNameOk";
	}
	
	

	
	
	
	
	
	
	
	
	
	
	
	
}
