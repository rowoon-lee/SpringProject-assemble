package kr.co.assemble.dto;

public class AssembleGroupDTO {

	private String assemblename;
	private String groupname;
	private int categoryno;
	private int groupno;
	private int memberno;
	
	public AssembleGroupDTO() {
		// TODO Auto-generated constructor stub
	}
	

	public AssembleGroupDTO(String assemblename, String groupname, int groupno, int categoryno, int memberno) {
		super();
		this.assemblename = assemblename;
		this.groupname = groupname;
		this.groupno = groupno;
		this.categoryno = categoryno;
		this.memberno = memberno;
	}


	public String getAssemblename() {
		return assemblename;
	}

	public void setAssemblename(String assemblename) {
		this.assemblename = assemblename;
	}

	public String getGroupname() {
		return groupname;
	}

	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}


	public int getGroupno() {
		return groupno;
	}


	public void setGroupno(int groupno) {
		this.groupno = groupno;
	}


	public int getCategoryno() {
		return categoryno;
	}


	public void setCategoryno(int categoryno) {
		this.categoryno = categoryno;
	}


	public int getMemberno() {
		return memberno;
	}


	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	
	
	
	
	
}
