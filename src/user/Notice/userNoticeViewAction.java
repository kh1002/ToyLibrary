package user.Notice;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import user.Notice.userNoticeVO;

public class userNoticeViewAction extends ActionSupport
{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private userNoticeVO paramClass = new userNoticeVO();
	private userNoticeVO resultClass = new userNoticeVO();
	
	private int currentPage;

	private int notice_no;
	
	
	public userNoticeViewAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	
	
	
	
	public String execute() throws Exception
	{
		paramClass.setNotice_no(getNotice_no());
		sqlMapper.update("userNotice-updateReadCount", paramClass);
		
		resultClass = (userNoticeVO) sqlMapper.queryForObject("userNotice-selectOne", getNotice_no());
	
		return SUCCESS;
	}

	
	


	
	
	
	public static Reader getReader() {
		return reader;
	}


	public static void setReader(Reader reader) {
		userNoticeViewAction.reader = reader;
	}


	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}


	public static void setSqlMapper(SqlMapClient sqlMapper) {
		userNoticeViewAction.sqlMapper = sqlMapper;
	}


	public userNoticeVO getParamClass() {
		return paramClass;
	}


	public void setParamClass(userNoticeVO paramClass) {
		this.paramClass = paramClass;
	}


	public userNoticeVO getResultClass() {
		return resultClass;
	}


	public void setResultClass(userNoticeVO resultClass) {
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
