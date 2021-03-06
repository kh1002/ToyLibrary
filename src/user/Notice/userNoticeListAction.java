package user.Notice;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import user.Notice.noticePagingAction;
import user.Notice.userNoticeVO;

public class userNoticeListAction extends ActionSupport
{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private List<userNoticeVO> list = new ArrayList<userNoticeVO>();

	private String searchKeyword;
	private int searchNum;
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private noticePagingAction page;

	private int num = 0;
	
	public userNoticeListAction() throws Exception
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception 
	{
		if(getSearchKeyword() != null)
		{
			return search();
		}
		
		list = sqlMapper.queryForList("userNotice-selectAll");
		
		totalCount = list.size();
		page = new noticePagingAction(currentPage, totalCount, blockCount, blockPage, num, "");
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		
		list = list.subList(page.getStartCount(), lastCount);
		return SUCCESS;
	}
	
public String search() throws Exception {
		
		//searchKeyword = new String(searchKeyword.getBytes("iso-8859-1"),"euc-kr") ;
		//System.out.println(searchKeyword);
		//System.out.println(searchNum);
		if(searchNum == 0){
			list = sqlMapper.queryForList("userNotice-selectSearchS", "%"+getSearchKeyword()+"%");
		}
		if(searchNum == 1){
			list = sqlMapper.queryForList("userNotice-selectSearchC", "%"+getSearchKeyword()+"%");	
		}
		
		totalCount = list.size();
		page = new noticePagingAction(currentPage, totalCount, blockCount, blockPage, searchNum, getSearchKeyword());
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		
		list = list.subList(page.getStartCount(), lastCount);
		return SUCCESS;
	}

	
	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		userNoticeListAction.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		userNoticeListAction.sqlMapper = sqlMapper;
	}

	public List<userNoticeVO> getList() {
		return list;
	}

	public void setList(List<userNoticeVO> list) {
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

	public noticePagingAction getPage() {
		return page;
	}

	public void setPage(noticePagingAction page) {
		this.page = page;
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
	
	
}
