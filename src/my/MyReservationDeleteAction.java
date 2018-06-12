package my;

import com.opensymphony.xwork2.ActionSupport;

import admin.toyProductVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import my.MyRentVO;

public class MyReservationDeleteAction extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	

	private MyRentVO paramClass; //파라미터를 저장할 객체
	private MyRentVO resultClass; //쿼리 결과 값을 저장할 객체

	private int toy_id;
	private String member_id;
	private String state_code;
	
	//생성자
	public MyReservationDeleteAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다. 읽어들여서 리더객체 생성
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	

	public String execute() throws Exception {
	
		paramClass = new MyRentVO();
		resultClass = new MyRentVO();
		
		//삭제할 항목 설정
		paramClass.setToy_id(getToy_id());
		paramClass.setMember_id(getMember_id());
		
		System.out.println("마이토이아이디"+paramClass.getToy_id());
		System.out.println("마이멤버아이디"+paramClass.getMember_id());
		//삭제 쿼리 수행
		sqlMapper.delete("myReservationDelete", paramClass);
		

		return SUCCESS;
	}

	public String stateModify() throws Exception {
		System.out.println("mystate의 stateModify이 수행?");
		
		paramClass = new MyRentVO();
		resultClass = new MyRentVO();
		
		paramClass.setState_code("대여가능");
		paramClass.setToy_id(getToy_id());
		
		System.out.println("상태코드 : " + getState_code());
		System.out.println("토이아이디 : " + getToy_id());
		
		sqlMapper.update("myReservationStateUpdate", paramClass);
		return SUCCESS;
	}
	
	
	public MyRentVO getParamClass() {
		return paramClass;
	}


	public void setParamClass(MyRentVO paramClass) {
		this.paramClass = paramClass;
	}


	public MyRentVO getResultClass() {
		return resultClass;
	}


	public void setResultClass(MyRentVO resultClass) {
		this.resultClass = resultClass;
	}


	public int getToy_id() {
		return toy_id;
	}


	public void setToy_id(int toy_id) {
		this.toy_id = toy_id;
	}


	public String getMember_id() {
		return member_id;
	}


	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}


	public String getState_code() {
		return state_code;
	}


	public void setState_code(String state_code) {
		this.state_code = state_code;
	}

	


}
