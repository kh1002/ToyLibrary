package my;

import com.opensymphony.xwork2.ActionSupport;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;

import org.apache.struts2.interceptor.SessionAware;

import java.io.Reader;
import java.io.IOException;

import my.MyRentVO;

import member.MemberVO;
import org.apache.struts2.interceptor.SessionAware;
import java.sql.Timestamp;

public class MyReservationListAction extends ActionSupport implements SessionAware {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private  MyRentVO mparamClass = new MyRentVO();
	private  MyRentVO mresultClass = new MyRentVO();
	
	private String member_id;
	private Map session;
	
	private int totalCount; 	//총 게시물의 수

	private List<MyRentVO> MyReservationlist = new ArrayList<MyRentVO>();
	
	//생성자
	public MyReservationListAction() throws IOException {

		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다. 읽어들여서 리더객체 생성
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	

	public String execute() throws Exception {
		
		mparamClass.setState_code("예약중");		
		mparamClass.setMember_id(session.get("member_id").toString());
		
		//모든 글을 가져와서 list에 넣는다
		MyReservationlist = sqlMapper.queryForList("myreservationInfoAll", mparamClass);
					
				
		totalCount = MyReservationlist.size(); //전체 글 갯수를 구함
	
		return SUCCESS;
	}


	public int getTotalCount() {
		return totalCount;
	}


	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}


	public List<MyRentVO> getMyReservationlist() {
		return MyReservationlist;
	}


	public void setMyReservationlist(List<MyRentVO> myReservationlist) {
		MyReservationlist = myReservationlist;
	}


	public MyRentVO getMparamClass() {
		return mparamClass;
	}


	public void setMparamClass(MyRentVO mparamClass) {
		this.mparamClass = mparamClass;
	}


	public MyRentVO getMresultClass() {
		return mresultClass;
	}


	public void setMresultClass(MyRentVO mresultClass) {
		this.mresultClass = mresultClass;
	}


	public String getMember_id() {
		return member_id;
	}


	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	
	public Map getSession() {
		return session;
	}


	public void setSession(Map session) {
		this.session = session;
	}

}
