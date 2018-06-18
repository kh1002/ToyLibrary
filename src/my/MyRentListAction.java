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



public class MyRentListAction extends ActionSupport implements SessionAware {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private  MyRentVO mparamClass = new MyRentVO();
	private  MyRentVO mresultClass = new MyRentVO();
	
	private Map session;
		
	private int totalCount; 	//총 게시물의 수

	private List<MyRentVO> MyRentlist = new ArrayList<MyRentVO>();
	
	//생성자
	public MyRentListAction() throws IOException {

		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml 파일의 설정내용을 가져온다. 읽어들여서 리더객체 생성
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);// sqlMapConfig.xml의 내용을 적용한 sqlMapper 객체 생성.
		reader.close();
	}
	

	public String execute() throws Exception {
		
		mparamClass.setState_code("대여중");		
		mparamClass.setMember_id(session.get("member_id").toString());
		
		//모든 글을 가져와서 list에 넣는다
		MyRentlist = sqlMapper.queryForList("myrentInfoAll",mparamClass);
		
				
		totalCount = MyRentlist.size(); //전체 글 갯수를 구함
	
		return SUCCESS;
	}


	public int getTotalCount() {
		return totalCount;
	}


	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}


	public List<MyRentVO> getMyRentlist() {
		return MyRentlist;
	}


	public void setMyRentlist(List<MyRentVO> myRentlist) {
		MyRentlist = myRentlist;
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


	public Map getSession() {
		return session;
	}


	public void setSession(Map session) {
		this.session = session;
	}







}
