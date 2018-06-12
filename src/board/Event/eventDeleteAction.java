package board.Event;

import java.io.File;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import board.Event.eventVO;

public class eventDeleteAction extends ActionSupport 
{
	public static Reader reader;
	public static SqlMapClient sqlMapper;

	private eventVO paramClass;
	private eventVO resultClass;

	private int currentPage;
	
	private int event_no;
	
	private String fileUploadPath="C:\\Users\\황의겸\\Desktop\\Java\\AdminBoard\\WebContent\\image\\";
	
	public eventDeleteAction() throws Exception
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); 
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); 
		reader.close();
	}
	
	public String execute() throws Exception
	{
		paramClass = new eventVO();
		resultClass = new eventVO();
		
		resultClass = (eventVO) sqlMapper.queryForObject("Event-selectOne", getEvent_no());
		
		paramClass.setEvent_no(getEvent_no());
		
		sqlMapper.delete("Event-delete",paramClass);
		
		if(resultClass.getFile_savname() != null)
		{
			String file_names[] =resultClass.getFile_savname().split(",");
		
			for(int i=0; i<file_names.length; i++) {
				File deleteFile = new File(fileUploadPath+file_names[i]);
				deleteFile.delete();
			}
		}
		
		
		
		
		return SUCCESS;
	
	}

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		eventDeleteAction.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		eventDeleteAction.sqlMapper = sqlMapper;
	}

	public eventVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(eventVO paramClass) {
		this.paramClass = paramClass;
	}

	public eventVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(eventVO resultClass) {
		this.resultClass = resultClass;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getEvent_no() {
		return event_no;
	}

	public void setEvent_no(int event_no) {
		this.event_no = event_no;
	}
	
	
	
}
