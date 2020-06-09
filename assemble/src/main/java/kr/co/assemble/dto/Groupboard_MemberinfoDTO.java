package kr.co.assemble.dto;

//그룹별 게시글 조회 시 가져와야 되는 DTO
public class Groupboard_MemberinfoDTO {
	private int memberno;
	private String mi_memname;
	private String mi_memid;
	private String boarddate;
	private String boardcontents;
	private int boardlike;
	private int boardhate;
	private int requestboolean;
	private int boardnotice;
	
	public Groupboard_MemberinfoDTO() {
		// TODO Auto-generated constructor stub
	}

	public Groupboard_MemberinfoDTO(int memberno, String mi_memname, String mi_memid, String boarddate,
			String boardcontents, int boardlike, int boardhate, int requestboolean, int boardnotice) {
		super();
		this.memberno = memberno;
		this.mi_memname = mi_memname;
		this.mi_memid = mi_memid;
		this.boarddate = boarddate;
		this.boardcontents = boardcontents;
		this.boardlike = boardlike;
		this.boardhate = boardhate;
		this.requestboolean = requestboolean;
		this.boardnotice = boardnotice;
	}



	public int getMemberno() {
		return memberno;
	}

	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}

	public String getMi_memname() {
		return mi_memname;
	}

	public void setMi_memname(String mi_memname) {
		this.mi_memname = mi_memname;
	}

	public String getMi_memid() {
		return mi_memid;
	}

	public void setMi_memid(String mi_memid) {
		this.mi_memid = mi_memid;
	}

	public String getBoarddate() {
		return boarddate;
	}

	public void setBoarddate(String boarddate) {
		this.boarddate = boarddate;
	}

	public String getBoardcontents() {
		return boardcontents;
	}

	public void setBoardcontents(String boardcontents) {
		this.boardcontents = boardcontents;
	}

	public int getBoardlike() {
		return boardlike;
	}

	public void setBoardlike(int boardlike) {
		this.boardlike = boardlike;
	}

	public int getBoardhate() {
		return boardhate;
	}

	public void setBoardhate(int boardhate) {
		this.boardhate = boardhate;
	}

	public int getRequestboolean() {
		return requestboolean;
	}

	public void setRequestboolean(int requestboolean) {
		this.requestboolean = requestboolean;
	}

	public int getBoardnotice() {
		return boardnotice;
	}

	public void setBoardnotice(int boardnotice) {
		this.boardnotice = boardnotice;
	}
	
	
	
	
	
	

}
