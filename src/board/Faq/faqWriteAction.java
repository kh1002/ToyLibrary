package board.Faq;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import board.Faq.faqVO;

public class faqWriteAction extends ActionSupport
{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private faqVO paramClass;
	private faqVO resultClass;
	
	private int currentPage;
	
	private int faq_no;
	private String faq_subject;
	private String faq_content;
	
	
	
	public faqWriteAction() throws IOException
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
		paramClass = new faqVO();
		resultClass = new faqVO();
		
		paramClass.setFaq_subject(getFaq_subject());
		paramClass.setFaq_content(getFaq_content());
		
		sqlMapper.insert("Faq-insert", paramClass);
		
		
		return SUCCESS;
		
		
	}

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		faqWriteAction.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		faqWriteAction.sqlMapper = sqlMapper;
	}

	public faqVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(faqVO paramClass) {
		this.paramClass = paramClass;
	}

	public faqVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(faqVO resultClass) {
		this.resultClass = resultClass;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getFaq_no() {
		return faq_no;
	}

	public void setFaq_no(int faq_no) {
		this.faq_no = faq_no;
	}

	public String getFaq_subject() {
		return faq_subject;
	}

	public void setFaq_subject(String faq_subject) {
		this.faq_subject = faq_subject;
	}

	public String getFaq_content() {
		return faq_content;
	}

	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}


	
	
}
