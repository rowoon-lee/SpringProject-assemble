package kr.co.assemble.dao;

import java.util.List;

import kr.co.assemble.dto.BoardDTO;

public interface BoardDAO {
	//글쓰기 - 일반
	public void write(BoardDTO dto);
	
	//글 수정
	public void updateBoard(BoardDTO dto);
	
	//그룹별 글 전체 조회(타임라인)
	public List<BoardDTO> boardlist(int groupno);
	
	
}
