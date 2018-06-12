package user.Qna;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.Reader;
import java.io.IOException;


import user.Qna.userQnaVO;

public class userQnaModifyAction extends ActionSupport{

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private userQnaVO paramClass;
	private userQnaVO resultClass;
	
	private int currentPage;
	
	private int qna_no;
	private String qna_subject;
	private String qna_name;
	private String qna_password;
	private String qna_content;
	
	public userQnaModifyAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
		
	}
	
	public String execute() throws Exception
	{
		paramClass = new userQnaVO();
		resultClass = new userQnaVO();
		
		paramClass.setQna_no(getQna_no());
		paramClass.setQna_subject(getQna_subject());
		paramClass.setQna_name(getQna_name());
		paramClass.setQna_password(getQna_password());
		paramClass.setQna_content(getQna_content());
		
		sqlMapper.update("userQna-update", paramClass);
		
		
		
		resultClass = (userQnaVO) sqlMapper.queryForObject("userQna-selectOne", getQna_no());
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

	public String getQna_subject() {
		return qna_subject;
	}

	public void setQna_subject(String qna_subject) {
		this.qna_subject = qna_subject;
	}

	public String getQna_name() {
		return qna_name;
	}

	public void setQna_name(String qna_name) {
		this.qna_name = qna_name;
	}

	public String getQna_password() {
		return qna_password;
	}

	public void setQna_password(String qna_password) {
		this.qna_password = qna_password;
	}

	public String getQna_content() {
		return qna_content;
	}

	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	
	


	
}
