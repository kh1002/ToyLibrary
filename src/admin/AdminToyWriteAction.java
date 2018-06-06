package admin;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

//import admin.toyProductVO;

public class AdminToyWriteAction extends ActionSupport {
	
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
	private int original_zizum;
	private int zizum_no;
	private String state_code; 
	/*private Date toy_reg_date; //오늘 날짜 구하기*/	
	Calendar today = Calendar.getInstance();
	
	//생성자
	public AdminToyWriteAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); //sqlMapConfig.xml파일의 설정내용을 가져옴
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); //sqlMapConfig.xml의 내용을 적용한 sqlMapper객체생성
		reader.close();
		
	}
	
	//등록 폼
	public String form() throws Exception {
		return SUCCESS;
	}
	
	public String execute() throws Exception {

		//파라미터와 리절트 객체 생성(자바빈 객체 생성)
		paramClass = new toyProductVO();
		resultClass = new toyProductVO();
		
		//장난감의 등록할 항목 설정
	/*	paramClass.setToy_id(resultClass.getToy_id());*/
		paramClass.setToy_name(getToy_name());
		paramClass.setToy_detail(getToy_detail());
		paramClass.setToy_age(getToy_age());
		paramClass.setToy_gusung(getToy_gusung());
		
		//지점컬럼2개는 자동으로 입력되는 방법 찾아야함. 관라자가 어쩌구젂=쩌구.....
		paramClass.setZizum_no(getZizum_no());
		paramClass.setOriginal_zizum(getOriginal_zizum());
		
		
		paramClass.setState_code("대여가능");
		paramClass.setToy_reg_date(today.getTime());
		
		//등록 쿼리 수행
		sqlMapper.insert("insertToy",paramClass); //(함수이름?, 자바빈) //9개중 7개의 변수 세팅
		
		return SUCCESS;	
	}
	
	
	
	/*토이 겟셋메소드*/

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

	public int getOriginal_zizum() {
		return original_zizum;
	}

	public void setOriginal_zizum(int original_zizum) {
		this.original_zizum = original_zizum;
	}

	public int getZizum_no() {
		return zizum_no;
	}

	public void setZizum_no(int zizum_no) {
		this.zizum_no = zizum_no;
	}

	public String getState_code() {
		return state_code;
	}

	public void setState_code(String state_code) {
		this.state_code = state_code;
	}

/*	public Date getToy_reg_date() {
		return toy_reg_date;
	}

	public void setToy_reg_date(Date toy_reg_date) {
		this.toy_reg_date = toy_reg_date;
	}
	*/
	

}
