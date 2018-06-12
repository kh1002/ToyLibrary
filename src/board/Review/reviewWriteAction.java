package board.Review;

import com.opensymphony.xwork2.ActionSupport;

import board.Event.eventVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.io.File;
import org.apache.commons.io.FileUtils;
import board.Review.reviewVO;

public class reviewWriteAction extends ActionSupport{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private reviewVO paramClass;
	private reviewVO resultClass;

	
	private int currentPage;
	
	private int review_no;
	private String review_subject;
	private String review_content;
	private String review_name;
	private String review_password;

	private String file_orgName;
	private String file_savName;

	Calendar today = Calendar.getInstance();
	
	private List<File> uploads = new ArrayList<File>();
	private List<String> uploadsFileName = new ArrayList<String>();
	private List<String> uploadsContentType = new ArrayList<String>();
	private String fileUploadPath="C:\\Users\\황의겸\\Desktop\\Java\\AdminBoard\\WebContent\\reviewImage\\";
	
	
	public reviewWriteAction() throws IOException
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
		
		paramClass = new reviewVO();
		resultClass = new reviewVO();
		
		
		
		paramClass.setReview_subject(getReview_subject());
		paramClass.setReview_name(getReview_name());
		paramClass.setReview_password(getReview_password());
		paramClass.setReview_content(getReview_content());
		paramClass.setReview_regdate(today.getTime());
		
		
		sqlMapper.insert("Review-insert", paramClass);
		
		
		if(getUploads() != null)
		{
			
			
			
			resultClass = (reviewVO) sqlMapper.queryForObject("Review-selectLastNo");
			
			StringBuffer sb = new StringBuffer();
			StringBuffer sb1 = new StringBuffer();
			
		
			for(int i=0; i<uploads.size(); i++)
			{
				String file_name = "file_" + resultClass.getReview_no()+"_"+i;
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
			
			paramClass.setReview_no(resultClass.getReview_no());
			paramClass.setFile_orgname(sb.toString());
			paramClass.setFile_savname(sb1.toString());
			
			sqlMapper.update("Review-updateFile", paramClass);
		}

		return SUCCESS;
	}
	
	

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		reviewWriteAction.sqlMapper = sqlMapper;
	}

	public reviewVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(reviewVO paramClass) {
		this.paramClass = paramClass;
	}

	public reviewVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(reviewVO resultClass) {
		this.resultClass = resultClass;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public String getReview_subject() {
		return review_subject;
	}

	public void setReview_subject(String review_subject) {
		this.review_subject = review_subject;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public String getReview_name() {
		return review_name;
	}

	public void setReview_name(String review_name) {
		this.review_name = review_name;
	}

	public String getReview_password() {
		return review_password;
	}

	public void setReview_password(String review_password) {
		this.review_password = review_password;
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

	public Calendar getToday() {
		return today;
	}

	public void setToday(Calendar today) {
		this.today = today;
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
