package toy;

import com.opensymphony.xwork2.ActionSupport;

import admin.toyProductVO;
import admin.zizumVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import toy.toyReserveVO;

public class ToyReserveAction extends ActionSupport {
	
	public static Reader reader; //파일 스트림을 위한 reader
	public static SqlMapClient sqlMapper; //SqlMapClient API를 사용하기 위한 sqlMapper 객체
	
	private toyReserveVO paramClass =  new toyReserveVO(); //파라미터를 저장할 객체. ibatis로 보내기 위함
	private toyReserveVO resultClass=  new toyReserveVO(); //쿼리 결과 값을 저장할 객체. ibatis에서 실행된 결과를 가져오려고
	
	//toy_product에서 정보를 빼와서 갖고있을 객체
	private toyProductVO TparamClass; //파라미터를 저장할 객체. ibatis로 보내기 위함
	private toyProductVO TresultClass; //쿼리 결과 값을 저장할 객체. ibatis에서 실행된 결과를 가져오려고
		
	//zizum에서 정보를 빼와서 갖고있을 객체.. 원래는 toy_member이어야 하지만 임의로 지점으로 함
	private zizumVO ZparamClass; //파라미터를 저장할 객체. ibatis로 보내기 위함
	private zizumVO ZresultClass; //쿼리 결과 값을 저장할 객체. ibatis에서 실행된 결과를 가져오려고
		

	private int zizum_no;
	
	private int reserve_no;
	private int toy_id;
	private String member_id;
	private int reserve_zizum;
	Calendar today = Calendar.getInstance();
	
	//생성자
	public ToyReserveAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); //sqlMapConfig.xml파일의 설정내용을 가져옴
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); //sqlMapConfig.xml의 내용을 적용한 sqlMapper객체생성
		reader.close();	
	}
	
	//등록 폼
	public String form() throws Exception {

/*		System.out.println("form이 수행?");
		System.out.println(getZizum_no());
		System.out.println("form이 수행?");
*/
		
		TparamClass = new toyProductVO();
		TresultClass = new toyProductVO();
		
		ZparamClass = new zizumVO();
		ZresultClass = new zizumVO();
		
		TresultClass = (toyProductVO) sqlMapper.queryForObject("selectOne", getToy_id());
		ZresultClass = (zizumVO) sqlMapper.queryForObject("zizumselectOne", getZizum_no());
		
		return SUCCESS;
	}
	
	public String execute() throws Exception {
		
		System.out.println("exe이 수행?");
		
		paramClass = new toyReserveVO();
		resultClass = new toyReserveVO();
		
		paramClass.setToy_id(getToy_id());
		paramClass.setMember_id("11");
		paramClass.setReserve_zizum(getZizum_no());
		paramClass.setReserve_date(today.getTime());
		paramClass.setReturn_date(today.getTime());
		
/*		테스트 다 해서 지워도 됨
		System.out.println("토이아이디 : "+paramClass.getToy_id());
		System.out.println("리턴지점 : "+paramClass.getReserve_zizum());
		System.out.println("멤버아이디 : "+paramClass.getMember_id());
		System.out.println("예약일 : "+paramClass.getReserve_date());
		System.out.println("대여가능일 : "+paramClass.getReturn_date());*/
		
			
		sqlMapper.insert("insertReserve", paramClass);
		
		TparamClass = new toyProductVO();
		TresultClass = new toyProductVO();
		
		TparamClass.setToy_id(getToy_id());
		TparamClass.setState_code("예약중");
		
		sqlMapper.update("updateToyState",TparamClass);
		
		
		
		return SUCCESS;

}


	public int getReserve_no() {
		return reserve_no;
	}

	public void setReserve_no(int reserve_no) {
		this.reserve_no = reserve_no;
	}

	public toyReserveVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(toyReserveVO paramClass) {
		this.paramClass = paramClass;
	}

	public toyReserveVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(toyReserveVO resultClass) {
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

	public int getReserve_zizum() {
		return reserve_zizum;
	}

	public void setReserve_zizum(int reserve_zizum) {
		this.reserve_zizum = reserve_zizum;
	}

	public toyProductVO getTparamClass() {
		return TparamClass;
	}

	public void setTparamClass(toyProductVO tparamClass) {
		TparamClass = tparamClass;
	}

	public toyProductVO getTresultClass() {
		return TresultClass;
	}

	public void setTresultClass(toyProductVO tresultClass) {
		TresultClass = tresultClass;
	}

	public zizumVO getZparamClass() {
		return ZparamClass;
	}

	public void setZparamClass(zizumVO zparamClass) {
		ZparamClass = zparamClass;
	}

	public zizumVO getZresultClass() {
		return ZresultClass;
	}

	public void setZresultClass(zizumVO zresultClass) {
		ZresultClass = zresultClass;
	}

	public int getZizum_no() {
		return zizum_no;
	}

	public void setZizum_no(int zizum_no) {
		this.zizum_no = zizum_no;
	}
	
	
	

	
}
