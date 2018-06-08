package admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import admin.pagingAction3;
import member.memberVO;
import toy.toyReserveVO;

public class AdminReturnListAction extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	
	private int currentPage = 1; //현재 페이지
	private int totalCount; 	//총 게시물의 수
	private int blockCount = 2; //한 페이지의 게시물의 수
	private int blockPage = 5; //한 화면에 보여줄 페이지 수
	private String pagingHtml; //페이징을 구현한 html
	private pagingAction3 page; //페이징 클래스
	

	private List<toyRentInfoVO> ReturnInfolist = new ArrayList<toyRentInfoVO>();
	
	//생성자
	public AdminReturnListAction() throws IOException {

		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다. 읽어들여서 리더객체 생성
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	

	public String execute() throws Exception {
		
		//모든 글을 가져와서 list에 넣는다
		ReturnInfolist = sqlMapper.queryForList("returnInfoAll","대여중");

		totalCount = ReturnInfolist.size(); //전체 글 갯수를 구함
				
		System.out.println(totalCount);
		
		//pagingAction 객체 생성
		page = new pagingAction3(currentPage, totalCount, blockCount, blockPage);
		
		pagingHtml = page.getPagingHtml().toString(); //페이지 html 생성
		
		//현재 페이지에서 보여 줄 마지막 글의 번호 설정
		int lastCount = totalCount;
		
		// 현재 페이지의 마지막 글의 번호가 전체의 마지막 글 번호보다 작으면 
		//lastCount를 +1 번호로 설정.
		if(page.getEndCount() < totalCount) {
			lastCount = page.getEndCount() +1;
		}
		
		//전체 리스트에서 현재 페이지만큼의 리스트만 가져온다
		ReturnInfolist = ReturnInfolist.subList(page.getStartCount(), lastCount);

		return SUCCESS;
	}


	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}


	public int getTotalCount() {
		return totalCount;
	}


	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}


	public int getBlockCount() {
		return blockCount;
	}


	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}


	public int getBlockPage() {
		return blockPage;
	}


	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}


	public pagingAction3 getPage() {
		return page;
	}


	public void setPage(pagingAction3 page) {
		this.page = page;
	}


	public List<toyRentInfoVO> getReturnInfolist() {
		return ReturnInfolist;
	}


	public void setReturnInfolist(List<toyRentInfoVO> returnInfolist) {
		ReturnInfolist = returnInfolist;
	}


	public String getPagingHtml() {
		return pagingHtml;
	}


	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}
	
	
	

}