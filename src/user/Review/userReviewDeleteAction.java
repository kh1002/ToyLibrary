package user.Review;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.File;
import java.io.Reader;
import java.io.IOException;


public class userReviewDeleteAction extends ActionSupport{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private userReviewVO paramClass;
	private userReviewVO resultClass;
	
	private userCreviewVO cClass = new userCreviewVO();
	private userCreviewVO cResult = new userCreviewVO();
	
	private int currentPage;
	private String fileUploadPath="C:\\Users\\황의겸\\Desktop\\Java\\AdminBoard\\WebContent\\reviewImage\\";
	
	private int review_no;
	private int creview_no;
	
	public userReviewDeleteAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception {
		paramClass = new userReviewVO();
		resultClass = new userReviewVO();
		
		resultClass = (userReviewVO) sqlMapper.queryForObject("userReview-selectOne", getReview_no());
		
		
		paramClass.setReview_no(getReview_no());
		
		sqlMapper.update("userReview-delete",paramClass);
		
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
	
	public String execute2() throws Exception {
		cClass = new userCreviewVO();
		cResult = new userCreviewVO();
		
		paramClass = new userReviewVO();
		paramClass.setReview_no(getReview_no());
		
		cClass.setCreview_no(getCreview_no());
		
		sqlMapper.update("userCreview-delete",cClass);
		
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

	public String getFileUploadPath() {
		return fileUploadPath;
	}

	public void setFileUploadPath(String fileUploadPath) {
		this.fileUploadPath = fileUploadPath;
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

	
	
	
}
