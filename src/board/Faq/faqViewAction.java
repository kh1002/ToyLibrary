package board.Faq;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import board.Faq.faqVO;

public class faqViewAction extends ActionSupport
{
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private faqVO paramClass = new faqVO();
	private faqVO resultClass = new faqVO();
	
	private int currentPage;

	private int faq_no;
	
	
	public faqViewAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	
	
	
	
	public String execute() throws Exception
	{
		paramClass.setFaq_no(getFaq_no());		
		resultClass = (faqVO) sqlMapper.queryForObject("Faq-selectOne", getFaq_no());
	
		return SUCCESS;
	}





	public static Reader getReader() {
		return reader;
	}





	public static void setReader(Reader reader) {
		faqViewAction.reader = reader;
	}





	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}





	public static void setSqlMapper(SqlMapClient sqlMapper) {
		faqViewAction.sqlMapper = sqlMapper;
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
	
	
	

}
