package user.Faq;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;

import user.Faq.userFaqVO;

public class userFaqViewAction extends ActionSupport {
	public static Reader reader;
	public static SqlMapClient sqlMapper;

	private userFaqVO paramClass = new userFaqVO();
	private userFaqVO resultClass = new userFaqVO();

	private int currentPage;

	private int faq_no;

	public userFaqViewAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception {
		paramClass.setFaq_no(getFaq_no());
		resultClass = (userFaqVO) sqlMapper.queryForObject("userFaq-selectOne", getFaq_no());

		return SUCCESS;
	}

	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		userFaqViewAction.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		userFaqViewAction.sqlMapper = sqlMapper;
	}

	public userFaqVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(userFaqVO paramClass) {
		this.paramClass = paramClass;
	}

	public userFaqVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(userFaqVO resultClass) {
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
