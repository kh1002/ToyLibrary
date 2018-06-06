package toy;

import com.opensymphony.xwork2.ActionSupport;

import admin.toyProductVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;


public class ToyDetailAction extends ActionSupport {

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private toyProductVO paramClass = new toyProductVO(); //파라미터를 저장할 객체
	private toyProductVO resultClass = new toyProductVO(); //쿼리 결과 값을 저장할 객체
	
	private int currentPage;
	private int toy_id;
	private int zizum_no;
	
	//생성자
	public ToyDetailAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");  // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	
	public String execute() throws Exception {
		

		paramClass.setToy_id(getToy_id());
		paramClass.setZizum_no(getZizum_no());
		//해당 번호의 글을 가져온다
		resultClass = (toyProductVO) sqlMapper.queryForObject("selectOne", getToy_id());

		System.out.println(getToy_id());
		
		
		return SUCCESS;	
	}
	
	


	public toyProductVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(toyProductVO paramClass) {
		this.paramClass = paramClass;
	}

	public toyProductVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(toyProductVO resultClass) {
		this.resultClass = resultClass;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getToy_id() {
		return toy_id;
	}

	public void setToy_id(int toy_id) {
		this.toy_id = toy_id;
	}

	public int getZizum_no() {
		return zizum_no;
	}

	public void setZizum_no(int zizum_no) {
		this.zizum_no = zizum_no;
	}


}
