package board.Event;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import board.Event.eventVO;

public class eventWriteAction extends ActionSupport
{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private eventVO paramClass;
	private eventVO resultClass;
	
	private int currentPage;
	
	private int event_no;
	private String event_subject;
	private String event_content;
	private String event_startday;
	private String event_endday;
	private String file_orgName;
	private String file_savName;
	private String event_position;
	
	private List<File> uploads = new ArrayList<File>();
	private List<String> uploadsFileName = new ArrayList<String>();
	private List<String> uploadsContentType = new ArrayList<String>();
	private String fileUploadPath="C:\\Users\\황의겸\\git\\ToyLibrary\\WebContent\\image\\";
	
	
	public eventWriteAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String form() throws Exception
	{
		return SUCCESS;
	}
	
	public String execute() throws Exception
	{
		paramClass = new eventVO();
		resultClass = new eventVO();
		
		paramClass.setEvent_subject(getEvent_subject());
		paramClass.setEvent_content(getEvent_content());
		paramClass.setEvent_startday(getEvent_startday());
		paramClass.setEvent_endday(getEvent_endday());
		paramClass.setEvent_position(getEvent_position());
		
		sqlMapper.insert("Event-insert", paramClass);
		
		if(getUploads() != null)
		{
			
			
			
			resultClass = (eventVO) sqlMapper.queryForObject("Event-selectLastNo");
			
			StringBuffer sb = new StringBuffer();
			StringBuffer sb1 = new StringBuffer();
			
		
			for(int i=0; i<uploads.size(); i++)
			{
				String file_name = "file_" + resultClass.getEvent_no()+"_"+i;
				String file_ext = getUploadsFileName().get(i).substring(getUploadsFileName().get(i).lastIndexOf('.') + 1,getUploadsFileName().get(i).length());
				File destFile = new File(fileUploadPath +file_name+"."+file_ext);
				
				if(i==uploads.size()) {
					sb.append(getUploadsFileName().get(i));
					sb1.append(file_name+"."+file_ext);
				}else {
					sb.append(getUploadsFileName().get(i)+",");
					sb1.append(file_name+"."+file_ext+",");
				}
				FileUtils.copyFile(getUploads().get(i), destFile);
			}
			
			paramClass.setEvent_no(resultClass.getEvent_no());
			paramClass.setFile_orgname(sb.toString());
			paramClass.setFile_savname(sb1.toString());
			
			sqlMapper.update("Event-updateFile", paramClass);
		}
		
		

		return SUCCESS;
		
		
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

	public String getEvent_subject() {
		return event_subject;
	}

	public void setEvent_subject(String event_subject) {
		this.event_subject = event_subject;
	}

	public String getEvent_content() {
		return event_content;
	}

	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}

	public String getEvent_startday() {
		return event_startday;
	}

	public void setEvent_startday(String event_startday) {
		this.event_startday = event_startday;
	}

	public String getEvent_endday() {
		return event_endday;
	}

	public void setEvent_endday(String event_endday) {
		this.event_endday = event_endday;
	}

	

	public String getFile_orgName() {
		return file_orgName;
	}

	public void setFile_orgName(String file_orgName) {
		this.file_orgName = file_orgName;
	}

	public String getFile_savName() {
		return file_savName;
	}

	public void setFile_savName(String file_savName) {
		this.file_savName = file_savName;
	}

	public String getEvent_position() {
		return event_position;
	}

	public void setEvent_position(String event_position) {
		this.event_position = event_position;
	}


	public List<File> getUploads() {
		return uploads;
	}

	public void setUploads(List<File> uploads) {
		this.uploads = uploads;
	}

	public List<String> getUploadsFileName() {
		return uploadsFileName;
	}

	public void setUploadsFileName(List<String> uploadsFileName) {
		this.uploadsFileName = uploadsFileName;
	}

	public List<String> getUploadsContentType() {
		return uploadsContentType;
	}

	public void setUploadsContentType(List<String> uploadsContentType) {
		this.uploadsContentType = uploadsContentType;
	}

	public String getFileUploadPath() {
		return fileUploadPath;
	}

	public void setFileUploadPath(String fileUploadPath) {
		this.fileUploadPath = fileUploadPath;
	}
	
	
	
}
