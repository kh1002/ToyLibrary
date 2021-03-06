package board.Review;


import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;



public class commentWriteAction extends ActionSupport{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private creviewVO paramClass;
	private creviewVO resultClass;

	private int creview_no;
	private int currentPage;

	private String creview_name;
	private String creview_password;
	private String creview_content;
	private int review_no;

	Calendar today = Calendar.getInstance();

	public commentWriteAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();

	}
	
	public String form() throws Exception
	{
		return SUCCESS;
		
	}

	public String execute() throws Exception {
		
		paramClass = new creviewVO();
		resultClass = new creviewVO();
		
		paramClass.setReview_no(getReview_no());
		paramClass.setCreview_name(getCreview_name());
		paramClass.setCreview_password(getCreview_password());
		
		paramClass.setCreview_content(getCreview_content());
		paramClass.setCreview_regdate(today.getTime());
		
		sqlMapper.insert("Creview-insert", paramClass);
		

		return SUCCESS;
	}

	public creviewVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(creviewVO paramClass) {
		this.paramClass = paramClass;
	}

	public creviewVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(creviewVO resultClass) {
		this.resultClass = resultClass;
	}

	public int getCreview_no() {
		return creview_no;
	}

	public void setCreview_no(int creview_no) {
		this.creview_no = creview_no;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String getCreview_name() {
		return creview_name;
	}

	public void setCreview_name(String creview_name) {
		this.creview_name = creview_name;
	}

	public String getCreview_password() {
		return creview_password;
	}

	public void setCreview_password(String creview_password) {
		this.creview_password = creview_password;
	}

	public String getCreview_content() {
		return creview_content;
	}

	public void setCreview_content(String creview_content) {
		this.creview_content = creview_content;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public Calendar getToday() {
		return today;
	}

	public void setToday(Calendar today) {
		this.today = today;
	}

	
	
	
	
	

}
