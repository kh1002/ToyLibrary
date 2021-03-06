package admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;

import org.apache.struts2.interceptor.SessionAware;

import java.io.Reader;
import java.io.IOException;

import admin.pagingAction;

//import admin.toyProductVO;

public class AdminToyListAction extends ActionSupport implements SessionAware{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private List<toyProductVO> list = new ArrayList<toyProductVO>();

	private zizumVO paramClass = new zizumVO(); 
	private zizumVO resultClass = new zizumVO(); 
	
	private zizumVO zparamClass;
	private zizumVO zresultClass;
	
	private Map session;
	
	private int currentPage = 1; //현재 페이지
	private int totalCount; 	//총 게시물의 수
	private int blockCount = 6; //한 페이지의 게시물의 수
	private int blockPage = 5; //한 화면에 보여줄 페이지 수
	private String pagingHtml; //페이징을 구현한 html
	private pagingAction page; //페이징 클래스
	
	private int zizum_no;
	
	private String searchKeyword;
	private int searchNum;
	private int num = 0;
	
	//생성자
	public AdminToyListAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다. 읽어들여서 리더객체 생성
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	
	public String execute() throws Exception {
		
		zparamClass = new zizumVO();
		zresultClass = new zizumVO();
		
		
		if(getSearchKeyword() != null)
		{
			return search();
		}
		
		//모든 글을 가져와서 list에 넣는다
		list = sqlMapper.queryForList("selectAll");
		
		for(int i=1; i<=3; i++)
		{
			if(session.get("member_id").equals("admin"+i))
			{
				zparamClass.setAdmin_no(i);
			}
		}
		
		zresultClass = (zizumVO) sqlMapper.queryForObject("zizumselectOne",zparamClass.getAdmin_no());
		
		totalCount = list.size(); //전체 글 갯수를 구함
		
		System.out.println(totalCount);
		/*System.out.println("지점수" + zizumlist.size());*/
		
		//pagingAction 객체 생성
		page = new pagingAction(currentPage, totalCount, blockCount, blockPage, num, "");
		
		pagingHtml = page.getPagingHtml().toString(); //페이지 html 생성
		
		//현재 페이지에서 보여 줄 마지막 글의 번호 설정
		int lastCount = totalCount;
		
		// 현재 페이지의 마지막 글의 번호가 전체의 마지막 글 번호보다 작으면 
		//lastCount를 +1 번호로 설정.
		if(page.getEndCount() < totalCount) {
			lastCount = page.getEndCount() +1;
		}
		
		//전체 리스트에서 현재 페이지만큼의 리스트만 가져온다
		list = list.subList(page.getStartCount(), lastCount);
		/*zizumlist = zizumlist.subList(page.getStartCount(), lastCount);*/
		
		
		return SUCCESS;
	}

public String search() throws Exception {
		
		//searchKeyword = new String(searchKeyword.getBytes("iso-8859-1"),"euc-kr") ;
		//System.out.println(searchKeyword);
		System.out.println(searchNum);
		if(searchNum == 0){
			list = sqlMapper.queryForList("selectSearchN", "%"+getSearchKeyword()+"%");
		}
		if(searchNum == 1){
			if(searchKeyword.equals("강남점") || searchKeyword.equals("1"))
			{
				searchKeyword = "1";
				list = sqlMapper.queryForList("selectSearchZ", "%"+getSearchKeyword()+"%");
			}
			if(searchKeyword.equals("역삼점") || searchKeyword.equals("2"))
			{
				searchKeyword = "2";
				list = sqlMapper.queryForList("selectSearchZ", "%"+getSearchKeyword()+"%");
			}
			if(searchKeyword.equals("교대점") || searchKeyword.equals("3"))
			{
				searchKeyword = "3";
				list = sqlMapper.queryForList("selectSearchZ", "%"+getSearchKeyword()+"%");
			}
		}
		if(searchNum == 2){
			
			if(searchKeyword.equals("대여가능") || searchKeyword.equals("1"))
			{
				if(searchKeyword.equals("1"))
				{
					searchKeyword = "대여가능";
					
				}
				list = sqlMapper.queryForList("selectSearchS", "%"+getSearchKeyword()+"%");	

				searchKeyword = "1";
			}
			
			if(searchKeyword.equals("대여중") || searchKeyword.equals("2"))
			{
				if(searchKeyword.equals("2"))
				{
					searchKeyword = "대여중";
					
				}
				list = sqlMapper.queryForList("selectSearchS", "%"+getSearchKeyword()+"%");	

				searchKeyword = "2";
			}
			
			if(searchKeyword.equals("예약중") || searchKeyword.equals("3"))
			{
				if(searchKeyword.equals("3"))
				{
					searchKeyword = "예약중";
					
				}
				list = sqlMapper.queryForList("selectSearchS", "%"+getSearchKeyword()+"%");	
					
				searchKeyword = "1";
			}

			
		}
		
		totalCount = list.size();
		page = new pagingAction(currentPage, totalCount, blockCount, blockPage, searchNum, getSearchKeyword());
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		
		list = list.subList(page.getStartCount(), lastCount);
		return SUCCESS;
	}

	
/*	
	public List<zizumVO> getZizumlist() {
		return zizumlist;
	}

	public void setZizumlist(List<zizumVO> zizumlist) {
		this.zizumlist = zizumlist;
	}
*/
	public int getZizum_no() {
		return zizum_no;
	}

	public void setZizum_no(int zizum_no) {
		this.zizum_no = zizum_no;
	}

	
	public List<toyProductVO> getList() {
		return list;
	}


	public void setList(List<toyProductVO> list) {
		this.list = list;
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

	public String getPagingHtml() {
		return pagingHtml;
	}

	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public pagingAction getPage() {
		return page;
	}

	public void setPage(pagingAction page) {
		this.page = page;
	}

	public zizumVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(zizumVO paramClass) {
		this.paramClass = paramClass;
	}

	public zizumVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(zizumVO resultClass) {
		this.resultClass = resultClass;
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

	public zizumVO getZparamClass() {
		return zparamClass;
	}

	public void setZparamClass(zizumVO zparamClass) {
		this.zparamClass = zparamClass;
	}

	public zizumVO getZresultClass() {
		return zresultClass;
	}

	public void setZresultClass(zizumVO zresultClass) {
		this.zresultClass = zresultClass;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}




	
	
}


