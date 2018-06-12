package board.Event;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import board.Event.eventVO;

public class eventViewAction extends ActionSupport
{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private eventVO paramClass = new eventVO();
	private eventVO resultClass = new eventVO();
	
	private int currentPage;

	private int event_no;
	
	private String[] file_names;
	private List file_list;
	
	public eventViewAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	
	
	
	
	public String execute() throws Exception
	{
		paramClass.setEvent_no(getEvent_no());		
		resultClass = (eventVO) sqlMapper.queryForObject("Event-selectOne", getEvent_no());
		
		if(resultClass.getFile_savname() != null)
		{
			String file_name = resultClass.getFile_savname();
			file_names=file_name.split(",");
//		for(int i=0; i<file_names.length; i++) {
//			file_list.add(file_names[i]);
//		}
		}
	
		return SUCCESS;
	}





	public static Reader getReader() {
		return reader;
	}





	public static void setReader(Reader reader) {
		eventViewAction.reader = reader;
	}





	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}





	public static void setSqlMapper(SqlMapClient sqlMapper) {
		eventViewAction.sqlMapper = sqlMapper;
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





	public String[] getFile_names() {
		return file_names;
	}





	public void setFile_names(String[] file_names) {
		this.file_names = file_names;
	}





	public List getFile_list() {
		return file_list;
	}





	public void setFile_list(List file_list) {
		this.file_list = file_list;
	}
	
	
	
}
