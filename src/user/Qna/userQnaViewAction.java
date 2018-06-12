package user.Qna;

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

import user.Qna.userQnaVO;

public class userQnaViewAction extends ActionSupport{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private userQnaVO paramClass = new userQnaVO();
	private userQnaVO resultClass = new userQnaVO();

	
	
	private int currentPage;
	
	private int qna_no;
	
	private String qna_password;
	
	
	public userQnaViewAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception {
		paramClass.setQna_no(getQna_no());
		sqlMapper.update("userQna-updateReadCount",paramClass);
		
		resultClass = (userQnaVO) sqlMapper.queryForObject("userQna-selectOne", getQna_no());
		
		
		return SUCCESS;
	}
	

	
	public String checkForm() throws Exception
	{
		return SUCCESS;
	}
	
	public String checkAction()	throws Exception
	{
		paramClass.setQna_no(getQna_no());
		paramClass.setQna_password(getQna_password());
		
		resultClass = (userQnaVO) sqlMapper.queryForObject("userQna-selectPassword", paramClass);
		
		if(resultClass == null)
			return ERROR;
		
		return SUCCESS;
	}

	public userQnaVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(userQnaVO paramClass) {
		this.paramClass = paramClass;
	}

	public userQnaVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(userQnaVO resultClass) {
		this.resultClass = resultClass;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getQna_no() {
		return qna_no;
	}

	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}

	public String getQna_password() {
		return qna_password;
	}

	public void setQna_password(String qna_password) {
		this.qna_password = qna_password;
	}
	
	

	

	

}
