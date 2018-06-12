package user.Qna;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.io.File;
import org.apache.commons.io.FileUtils;

import user.Qna.userQnaVO;

public class userQnaWriteAction extends ActionSupport {

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

	Calendar today = Calendar.getInstance();

	private int qna_ref;
	private int qna_re_step;
	private int qna_re_level;

	boolean reply = false;

	public userQnaWriteAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();

	}

	public String form() throws Exception {
		return SUCCESS;

	}

	public String reply() throws Exception {
		reply = true;
		resultClass = new userQnaVO();

		resultClass = (userQnaVO) sqlMapper.queryForObject("userQna-selectOne", getQna_no());
		resultClass.setQna_subject("[답변]" + resultClass.getQna_subject());
		resultClass.setQna_password("");
		resultClass.setQna_name("");
		resultClass.setQna_content("");

		return SUCCESS;

	}

	public String execute() throws Exception {

		paramClass = new userQnaVO();
		resultClass = new userQnaVO();

		if (qna_ref == 0) {
			paramClass.setQna_re_step(0);
			paramClass.setQna_re_level(0);

		} else {

			paramClass.setQna_ref(getQna_ref());
			paramClass.setQna_re_step(getQna_re_step());
			sqlMapper.update("userQna-updateReplyStep", paramClass);

			paramClass.setQna_re_step(getQna_re_step() + 1);
			paramClass.setQna_re_level(getQna_re_level() + 1);
			paramClass.setQna_ref(getQna_ref());
		}

		paramClass.setQna_subject(getQna_subject());
		paramClass.setQna_name(getQna_name());
		paramClass.setQna_password(getQna_password());
		paramClass.setQna_content(getQna_content());
		paramClass.setQna_regdate(today.getTime());

		if (qna_ref == 0)
			sqlMapper.insert("userQna-insert", paramClass);
		else
			sqlMapper.insert("userQna-insertReply", paramClass);

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

	public Calendar getToday() {
		return today;
	}

	public void setToday(Calendar today) {
		this.today = today;
	}

	public int getQna_ref() {
		return qna_ref;
	}

	public void setQna_ref(int qna_ref) {
		this.qna_ref = qna_ref;
	}

	public int getQna_re_step() {
		return qna_re_step;
	}

	public void setQna_re_step(int qna_re_step) {
		this.qna_re_step = qna_re_step;
	}

	public int getQna_re_level() {
		return qna_re_level;
	}

	public void setQna_re_level(int qna_re_level) {
		this.qna_re_level = qna_re_level;
	}

	public boolean isReply() {
		return reply;
	}

	public void setReply(boolean reply) {
		this.reply = reply;
	}

}
