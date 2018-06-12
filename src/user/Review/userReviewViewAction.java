package user.Review;

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



public class userReviewViewAction extends ActionSupport{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private userReviewVO paramClass = new userReviewVO();
	private userReviewVO resultClass = new userReviewVO();
	private List<userCreviewVO> commentlist = new ArrayList<userCreviewVO>();
	
	private userCreviewVO cClass = new userCreviewVO();
	private userCreviewVO cResult = new userCreviewVO();
	
	
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
	
	
	
	public userReviewViewAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception {
		
		paramClass.setReview_no(getReview_no());
		
		sqlMapper.update("userReview-updateReadCount",paramClass);
		
		resultClass = (userReviewVO) sqlMapper.queryForObject("userReview-selectOne", getReview_no());
		
		commentlist = sqlMapper.queryForList("userCommentSelectAll", getReview_no());
		
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
		
		resultClass = (userReviewVO) sqlMapper.queryForObject("userReview-selectPassword", paramClass);
		
		if(resultClass == null)
			return ERROR;
		
		return SUCCESS;
	}
	
	public String checkAction2()	throws Exception
	{
		cClass.setCreview_no(getCreview_no());
		cClass.setCreview_password(getCreview_password());
		cClass.setReview_no(getReview_no());
		
		cResult = (userCreviewVO) sqlMapper.queryForObject("userCreview-selectPassword", cClass);
		
		if(cResult == null)
			return ERROR;
		
		return SUCCESS;
	}

	public userReviewVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(userReviewVO paramClass) {
		this.paramClass = paramClass;
	}

	public userReviewVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(userReviewVO resultClass) {
		this.resultClass = resultClass;
	}

	public List<userCreviewVO> getCommentlist() {
		return commentlist;
	}

	public void setCommentlist(List<userCreviewVO> commentlist) {
		this.commentlist = commentlist;
	}

	public userCreviewVO getcClass() {
		return cClass;
	}

	public void setcClass(userCreviewVO cClass) {
		this.cClass = cClass;
	}

	public userCreviewVO getcResult() {
		return cResult;
	}

	public void setcResult(userCreviewVO cResult) {
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
