package board.Review;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.net.*;

public class reviewListAction extends ActionSupport{

	public static Reader reader;
	public static SqlMapClient sqlMapper;

	
	private List<reviewVO> list = new ArrayList<reviewVO>();
	private List commentCountList = new ArrayList();
	
	
	private String searchKeyword;
	private int searchNum;
	

	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockPage = 5;
	private String pagingHtml;
	private reviewPagingAction page;
	private int num = 0;


	public reviewListAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();		
		
	}
	
	public String execute() throws Exception {
		
		
		if(getSearchKeyword() != null)
		{
			return search();
		}
		
		list = sqlMapper.queryForList("Review-selectAll");
		
		
		totalCount = list.size();
		page = new reviewPagingAction(currentPage, totalCount, blockCount, blockPage, num, "");
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		
		list = list.subList(page.getStartCount(), lastCount);
		
		for(int i=0; i<list.size(); i++) {
			List<reviewVO> listMap = list;
			int count = listMap.get(i).getReview_no();
			
			List<creviewVO> cList = sqlMapper.queryForList("commentCount",count);
			
			commentCountList.add(cList.size());
			
			
		}
		return SUCCESS;
	}
	
	public String search() throws Exception {
		
		//searchKeyword = new String(searchKeyword.getBytes("iso-8859-1"),"euc-kr") ;
		//System.out.println(searchKeyword);
		//System.out.println(searchNum);
		if(searchNum == 0){
			list = sqlMapper.queryForList("Review-selectSearchW", "%"+getSearchKeyword()+"%");
		}
		if(searchNum == 1){
			list = sqlMapper.queryForList("Review-selectSearchS", "%"+getSearchKeyword()+"%");
		}
		if(searchNum == 2){
			list = sqlMapper.queryForList("Review-selectSearchC", "%"+getSearchKeyword()+"%");	
		}
		
		totalCount = list.size();
		page = new reviewPagingAction(currentPage, totalCount, blockCount, blockPage, searchNum, getSearchKeyword());
		pagingHtml = page.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;
		
		list = list.subList(page.getStartCount(), lastCount);
		
		for(int i=0; i<list.size(); i++) {
			List<reviewVO> listMap = list;
			int count = listMap.get(i).getReview_no();
			
			List<creviewVO> cList = sqlMapper.queryForList("commentCount",count);
			
			commentCountList.add(cList.size());
			
			
		}
		
		return SUCCESS;
	}

	public List<reviewVO> getList() {
		return list;
	}

	public void setList(List<reviewVO> list) {
		this.list = list;
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

	public reviewPagingAction getPage() {
		return page;
	}

	public void setPage(reviewPagingAction page) {
		this.page = page;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public List getCommentCountList() {
		return commentCountList;
	}

	public void getCommentCountList(List commentCountList) {
		this.commentCountList = commentCountList;
	}




	
	

}
