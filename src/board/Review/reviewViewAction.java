package board.Review;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.Reader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.IOException;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;



public class reviewViewAction extends ActionSupport{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private reviewVO paramClass = new reviewVO();
	private reviewVO resultClass = new reviewVO();
	private List<creviewVO> commentlist = new ArrayList<creviewVO>();
	
	private creviewVO cClass = new creviewVO();
	private creviewVO cResult = new creviewVO();
	
	
	private int currentPage;
	
	private int review_no;
	private int creview_no;
	
	private String review_password;
	private String creview_password;
	
	private String fileUploadPath="C:\\Users\\황의겸\\Desktop\\Java\\AdminBoard\\WebContent\\reviewImage\\";
	
	private String[] file_names;
	private List file_list;
	
	private InputStream inputStream;
	private String contentDisposition;
	private long contentLength;
	
	
	
	public reviewViewAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception {
		
		paramClass.setReview_no(getReview_no());
		
		sqlMapper.update("Review-updateReadCount",paramClass);
		
		resultClass = (reviewVO) sqlMapper.queryForObject("Review-selectOne", getReview_no());
		
		commentlist = sqlMapper.queryForList("commentSelectAll", getReview_no());
		
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
	
	
	
	public String checkForm() throws Exception
	{
		return SUCCESS;
	}
	
	public String checkAction()	throws Exception
	{
		paramClass.setReview_no(getReview_no());
		paramClass.setReview_password(getReview_password());
		
		resultClass = (reviewVO) sqlMapper.queryForObject("Review-selectPassword", paramClass);
		
		if(resultClass == null)
			return ERROR;
		
		return SUCCESS;
	}
	
	public String checkAction2()	throws Exception
	{
		cClass.setCreview_no(getCreview_no());
		cClass.setCreview_password(getCreview_password());
		cClass.setReview_no(getReview_no());
		
		cResult = (creviewVO) sqlMapper.queryForObject("Creview-selectPassword", cClass);
		
		if(cResult == null)
			return ERROR;
		
		return SUCCESS;
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

	public List<creviewVO> getCommentlist() {
		return commentlist;
	}

	public void setCommentlist(List<creviewVO> commentlist) {
		this.commentlist = commentlist;
	}

	public creviewVO getcClass() {
		return cClass;
	}

	public void setcClass(creviewVO cClass) {
		this.cClass = cClass;
	}

	public creviewVO getcResult() {
		return cResult;
	}

	public void setcResult(creviewVO cResult) {
		this.cResult = cResult;
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

	public int getCreview_no() {
		return creview_no;
	}

	public void setCreview_no(int creview_no) {
		this.creview_no = creview_no;
	}

	public String getReview_password() {
		return review_password;
	}

	public void setReview_password(String review_password) {
		this.review_password = review_password;
	}

	public String getCreview_password() {
		return creview_password;
	}

	public void setCreview_password(String creview_password) {
		this.creview_password = creview_password;
	}

	public String getFileUploadPath() {
		return fileUploadPath;
	}

	public void setFileUploadPath(String fileUploadPath) {
		this.fileUploadPath = fileUploadPath;
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

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public String getContentDisposition() {
		return contentDisposition;
	}

	public void setContentDisposition(String contentDisposition) {
		this.contentDisposition = contentDisposition;
	}

	public long getContentLength() {
		return contentLength;
	}

	public void setContentLength(long contentLength) {
		this.contentLength = contentLength;
	}

	
	
	
	

}
