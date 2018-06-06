package admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import admin.pagingAction;

//import admin.toyProductVO;

public class AdminToyListAction extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private List<toyProductVO> list = new ArrayList<toyProductVO>();

	private zizumVO paramClass = new zizumVO(); 
	private zizumVO resultClass = new zizumVO(); 
	
	private int currentPage = 1; //현재 페이지
	private int totalCount; 	//총 게시물의 수
	private int blockCount = 3; //한 페이지의 게시물의 수
	private int blockPage = 3; //한 화면에 보여줄 페이지 수
	private String pagingHtml; //페이징을 구현한 html
	private pagingAction page; //페이징 클래스
	
	private int zizum_no;
	
	
	//생성자
	public AdminToyListAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다. 읽어들여서 리더객체 생성
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	
	public String execute() throws Exception {
		//모든 글을 가져와서 list에 넣는다
		list = sqlMapper.queryForList("selectAll");
		
		resultClass=(zizumVO) sqlMapper.queryForObject("zizumselectOne",getZizum_no());
		
		totalCount = list.size(); //전체 글 갯수를 구함
		
		System.out.println(totalCount);
		/*System.out.println("지점수" + zizumlist.size());*/
		
		//pagingAction 객체 생성
		page = new pagingAction(currentPage, totalCount, blockCount, blockPage);
		
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
	
	
}


