package user.Qna;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.File;
import java.io.Reader;
import java.io.IOException;

import user.Qna.userQnaVO;

public class userQnaDeleteAction extends ActionSupport {

	public static Reader reader;
	public static SqlMapClient sqlMapper;

	private userQnaVO paramClass;
	private userQnaVO resultClass;

	private int currentPage;

	private int qna_no;

	public userQnaDeleteAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}

	public String execute() throws Exception {
		paramClass = new userQnaVO();
		resultClass = new userQnaVO();

		resultClass = (userQnaVO) sqlMapper.queryForObject("userQna-selectOne", getQna_no());

		paramClass.setQna_no(getQna_no());

		if (paramClass.getQna_re_level() == 0) {
			sqlMapper.delete("userQna-deleteR", paramClass);
		}

		sqlMapper.delete("userQna-delete", paramClass);

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

}
