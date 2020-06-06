package kr.co.assemble.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.assemble.dto.CategoryDTO;

@Repository
public class CategoryDAOImple implements CategoryDAO {

	@Autowired
	private SqlSession ss;	
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	//카테고리 생성
	@Override
	public void insertCategory(CategoryDTO dto) {
		ss.insert("insertCategory", dto);
	}

	//
	@Override
	public void updateOne(CategoryDTO dto) {
		
	}

	@Override
	public List<CategoryDTO> selectCategory() {
		// TODO Auto-generated method stub
		return ss.selectList("selectCategory");
	}
	

}
