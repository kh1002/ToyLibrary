package admin;

import com.opensymphony.xwork2.ActionSupport;

import admin.toyProductVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;



public class AdminRentDetailAction extends ActionSupport {

	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private toyRentInfoVO paramClass = new toyRentInfoVO(); //파라미터를 저장할 객체
	private toyRentInfoVO resultClass = new toyRentInfoVO(); //쿼리 결과 값을 저장할 객체
	
	private int toy_id;
	private String state_code;
	
	//생성자
	public AdminRentDetailAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");  // sqlMapConfig.xml 파일의 설정내용을 가져온다.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	
	
	public String form() throws Exception {
		System.out.println("rentDetail의 form이 수행?");

		//paramClass.setToy_id(getToy_id());
		
		System.out.println("토이아이디" + getToy_id());
		
		resultClass = (toyRentInfoVO) sqlMapper.queryForObject("rentInfoOne", getToy_id());
		
		return SUCCESS;
	}
	
	public String execute() throws Exception {

		System.out.println("rentDetail의 exe이 수행?");
		
		paramClass.setState_code(getState_code());
		paramClass.setToy_id(getToy_id());
		
		System.out.println("상태코드 : " + getState_code());
		System.out.println("토이아이디 : " + getToy_id());
		
		
		sqlMapper.update("updateRentState", paramClass);
		
	/*	paramClass.setToy_id(getToy_id());
		paramClass.setZizum_no(getZizum_no());
		//해당 번호의 글을 가져온다
		resultClass = (toyProductVO) sqlMapper.queryForObject("selectOne", getToy_id());

		System.out.println(getToy_id());
		*/
		
		return SUCCESS;	
	}



	public toyRentInfoVO getParamClass() {
		return paramClass;
	}


	public void setParamClass(toyRentInfoVO paramClass) {
		this.paramClass = paramClass;
	}


	public toyRentInfoVO getResultClass() {
		return resultClass;
	}


	public void setResultClass(toyRentInfoVO resultClass) {
		this.resultClass = resultClass;
	}


	public int getToy_id() {
		return toy_id;
	}


	public void setToy_id(int toy_id) {
		this.toy_id = toy_id;
	}


	public String getState_code() {
		return state_code;
	}


	public void setState_code(String state_code) {
		this.state_code = state_code;
	}



	
	

}
