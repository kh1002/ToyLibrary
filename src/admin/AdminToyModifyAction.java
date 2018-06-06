package admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

public class AdminToyModifyAction extends ActionSupport {
	
	public static Reader reader; //파일 스트림을 위한 reader
	public static SqlMapClient sqlMapper; //SqlMapClient API를 사용하기 위한 sqlMapper 객체
	
	private toyProductVO paramClass; //파라미터를 저장할 객체. ibatis로 보내기 위함
	private toyProductVO resultClass; //쿼리 결과 값을 저장할 객체. ibatis에서 실행된 결과를 가져오려고
		
	private int toy_id;
	private String toy_name;
	private String toy_image; //이미지파일이 이게 맞나??
	private String toy_detail;
	private String toy_gusung;
	private String toy_age;

	
	//생성자
	public AdminToyModifyAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); //sqlMapConfig.xml파일의 설정내용을 가져옴
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); //sqlMapConfig.xml의 내용을 적용한 sqlMapper객체생성
		reader.close();
		
	}
	
	//등록 폼
	public String form() throws Exception {
		
		//paramClass.setToy_id(getToy_id());
		//해당 번호의 글을 가져온다
		resultClass = (toyProductVO) sqlMapper.queryForObject("selectOne", getToy_id());

		System.out.println(getToy_id());
		
		
		return SUCCESS;
	}
	
	//수행폼
	public String execute() throws Exception {
		System.out.println("exe이 수행?");

		//파라미터와 리절트 객체 생성(자바빈 객체 생성)
		paramClass = new toyProductVO();
		resultClass = new toyProductVO();

		paramClass.setToy_id(getToy_id());
		paramClass.setToy_name(getToy_name());
		paramClass.setToy_detail(getToy_detail());
		paramClass.setToy_age(getToy_age());
		paramClass.setToy_gusung(getToy_gusung());
		
		System.out.println("toy_id : "+paramClass.getToy_id());
		
		sqlMapper.update("updateToy",paramClass); //(함수이름?, 자바빈) //9개중 7개의 변수 세팅
		
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

	public int getToy_id() {
		return toy_id;
	}

	public void setToy_id(int toy_id) {
		this.toy_id = toy_id;
	}

	public String getToy_name() {
		return toy_name;
	}

	public void setToy_name(String toy_name) {
		this.toy_name = toy_name;
	}

	public String getToy_image() {
		return toy_image;
	}

	public void setToy_image(String toy_image) {
		this.toy_image = toy_image;
	}

	public String getToy_detail() {
		return toy_detail;
	}

	public void setToy_detail(String toy_detail) {
		this.toy_detail = toy_detail;
	}

	public String getToy_gusung() {
		return toy_gusung;
	}

	public void setToy_gusung(String toy_gusung) {
		this.toy_gusung = toy_gusung;
	}

	public String getToy_age() {
		return toy_age;
	}

	public void setToy_age(String toy_age) {
		this.toy_age = toy_age;
	}
	

}
