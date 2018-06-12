package board.Review;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.File;
import java.io.Reader;
import java.io.IOException;


public class reviewDeleteAction extends ActionSupport{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private reviewVO paramClass;
	private reviewVO resultClass;
	
	private creviewVO cClass = new creviewVO();
	private creviewVO cResult = new creviewVO();
	
	private int currentPage;
	private String fileUploadPath="C:\\Users\\황의겸\\Desktop\\Java\\AdminBoard\\WebContent\\reviewImage\\";
	
	private int review_no;
	private int creview_no;
	
	public reviewDeleteAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception {
		paramClass = new reviewVO();
		resultClass = new reviewVO();
		
		resultClass = (reviewVO) sqlMapper.queryForObject("Review-selectOne", getReview_no());
		
		
		paramClass.setReview_no(getReview_no());
		
		sqlMapper.update("Review-delete",paramClass);
		
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
		cClass = new creviewVO();
		cResult = new creviewVO();
		
		paramClass = new reviewVO();
		paramClass.setReview_no(getReview_no());
		
		cClass.setCreview_no(getCreview_no());
		
		sqlMapper.update("Creview-delete",cClass);
		
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
