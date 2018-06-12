package board.Notice;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import board.Notice.noticeVO;

public class noticeViewAction extends ActionSupport
{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private noticeVO paramClass = new noticeVO();
	private noticeVO resultClass = new noticeVO();
	
	private int currentPage;

	private int notice_no;
	
	
	public noticeViewAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	
	
	
	
	public String execute() throws Exception
	{
		paramClass.setNotice_no(getNotice_no());
		sqlMapper.update("Notice-updateReadCount", paramClass);
		
		resultClass = (noticeVO) sqlMapper.queryForObject("Notice-selectOne", getNotice_no());
	
		return SUCCESS;
	}

	
	


	
	
	
	public static Reader getReader() {
		return reader;
	}


	public static void setReader(Reader reader) {
		noticeViewAction.reader = reader;
	}


	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}


	public static void setSqlMapper(SqlMapClient sqlMapper) {
		noticeViewAction.sqlMapper = sqlMapper;
	}


	public noticeVO getParamClass() {
		return paramClass;
	}


	public void setParamClass(noticeVO paramClass) {
		this.paramClass = paramClass;
	}


	public noticeVO getResultClass() {
		return resultClass;
	}


	public void setResultClass(noticeVO resultClass) {
		this.resultClass = resultClass;
	}


	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}


	public int getNotice_no() {
		return notice_no;
	}


	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	
	
	
	
}
