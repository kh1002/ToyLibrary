package admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;

import org.apache.struts2.interceptor.SessionAware;

import java.io.Reader;
import java.io.IOException;

import admin.pagingAction2;
import member.MemberVO;
import toy.toyReserveVO;

public class AdminRentListAction extends ActionSupport implements SessionAware{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	
	
	private int currentPage = 1; //현재 페이지
	private int totalCount; 	//총 게시물의 수
	private int blockCount = 6; //한 페이지의 게시물의 수
	private int blockPage = 5; //한 화면에 보여줄 페이지 수
	private String pagingHtml; //페이징을 구현한 html
	private pagingAction2 page; //페이징 클래스
	
	private String searchKeyword;
	private int searchNum;
	private int num = 0;
	
	private toyRentInfoVO paramClass = new toyRentInfoVO(); //파라미터를 저장할 객체
	private toyRentInfoVO resultClass = new toyRentInfoVO();
	private Map session;
	private String zizum_name;
	private String state_code;

	
	private List<toyRentInfoVO> RentInfolist = new ArrayList<toyRentInfoVO>();
	
	//생성자
	public AdminRentListAction() throws IOException {

		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다. 읽어들여서 리더객체 생성
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	

	public String execute() throws Exception {
		
		if(getSearchKeyword() != null)
		{
			return search();
		}
		
		paramClass.setState_code("예약중");
		if(session.get("member_id").equals("admin1"))
		{
			zizum_name = "강남점";
		}
		else if(session.get("member_id").equals("admin2"))
		{
			zizum_name = "역삼점";
		}
		else if(session.get("member_id").equals("admin3"))
		{
			zizum_name = "교대점";
		}
		paramClass.setZizum_name(zizum_name);
		
		//모든 글을 가져와서 list에 넣는다
		RentInfolist = sqlMapper.queryForList("rentInfoAll",paramClass);
		
				
		totalCount = RentInfolist.size(); //전체 글 갯수를 구함
				
		System.out.println(totalCount);
		
		//pagingAction 객체 생성
		page = new pagingAction2(currentPage, totalCount, blockCount, blockPage, num, "");
		
		pagingHtml = page.getPagingHtml().toString(); //페이지 html 생성
		
		//현재 페이지에서 보여 줄 마지막 글의 번호 설정
		int lastCount = totalCount;
		
		// 현재 페이지의 마지막 글의 번호가 전체의 마지막 글 번호보다 작으면 
		//lastCount를 +1 번호로 설정.
		if(page.getEndCount() < totalCount) {
			lastCount = page.getEndCount() +1;
		}
		
		//전체 리스트에서 현재 페이지만큼의 리스트만 가져온다
		RentInfolist = RentInfolist.subList(page.getStartCount(), lastCount);
		/*zizumlist = zizumlist.subList(page.getStartCount(), lastCount);*/
				
		
	
		return SUCCESS;
	}
	
	public String search() throws Exception {
		
		//searchKeyword = new String(searchKeyword.getBytes("iso-8859-1"),"euc-kr") ;
		System.out.println(searchKeyword);
		System.out.println(searchNum);
		System.out.println(getSearchKeyword());
		
		if(searchNum == 0){
			RentInfolist = sqlMapper.queryForList("Rent-selectSearchN", "%"+getSearchKeyword()+"%");
		}

		
		totalCount = RentInfolist.size();
		page = new pagingAction2(currentPage, totalCount, blockCount, blockPage, searchNum, getSearchKeyword());
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		
		RentInfolist = RentInfolist.subList(page.getStartCount(), lastCount);
		
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


	public pagingAction2 getPage() {
		return page;
	}


	public void setPage(pagingAction2 page) {
		this.page = page;
	}


	public List<toyRentInfoVO> getRentInfolist() {
		return RentInfolist;
	}


	public void setRentInfolist(List<toyRentInfoVO> rentInfolist) {
		RentInfolist = rentInfolist;
	}


	public String getPagingHtml() {
		return pagingHtml;
	}


	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}


	public String getSearchKeyword() {
		return searchKeyword;
	}


	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}


	public int getSearchNum() {
		return searchNum;
	}


	public void setSearchNum(int searchNum) {
		this.searchNum = searchNum;
	}


	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public toyRentInfoVO getParamClass() {
		return paramClass;
	}


	public void setParamClass(toyRentInfoVO paramClass) {
		this.paramClass = paramClass;
	}


	public toyRentInfoVO getResultClass() {
		return resultClass;
	}


	public void setResultClass(toyRentInfoVO resultClass) {
		this.resultClass = resultClass;
	}


	public Map getSession() {
		return session;
	}


	public void setSession(Map session) {
		this.session = session;
	}


	public String getZizum_name() {
		return zizum_name;
	}


	public void setZizum_name(String zizum_name) {
		this.zizum_name = zizum_name;
	}


	public String getState_code() {
		return state_code;
	}


	public void setState_code(String state_code) {
		this.state_code = state_code;
	}
	

}
