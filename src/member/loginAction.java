package member;

import java.io.IOException;
import java.io.Reader;
import java.util.Map;

import member.MemberVO;

import org.apache.struts2.interceptor.SessionAware;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;


public class loginAction extends ActionSupport implements SessionAware{
	
	private static final long serialVersionUID = 1L;
	
	public static Reader reader;	
	public static SqlMapClient sqlMapper;	
	
	private Map session;
	String member_id;
	String member_pw;
	
	String member_name;
	int member_jumin1;
	int member_jumin2;
	
	private MemberVO paramClass = new MemberVO();
	private MemberVO resultClass = new MemberVO();
	


	public loginAction() throws IOException { 
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); 
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String form() throws Exception{
		return SUCCESS;
	}
	
	public String logout() throws Exception {
		if (session.get("member_id") != null) {
			session.remove("member_id");
			session.remove("member_pw");
			
		}
		System.out.println("세션 삭제");
		return SUCCESS;
	}
	
	public String execute() throws Exception {
		System.out.println(member_id);
		System.out.println(member_pw);
		
		boolean result = loginChk(member_id, member_pw);
		
		if (result) {
			
			
			
			session.put("member_id", member_id);
			System.out.println("세션id");
			System.out.println(member_id);
			session.put("member_pw",member_pw );
			System.out.println("세션pw");
			System.out.println(member_pw);
			
			if(session.get("member_id").equals("admin1") || session.get("member_id").equals("admin2") || session.get("member_id").equals("admin3"))
			{
				return INPUT;
			}
			
			return SUCCESS; //로그인 성공 했을때
		} else {
			return LOGIN; //로그인 실패 했을때
		}
	}
	
	private boolean loginChk(String member_id, String member_pw) throws Exception {
		
		resultClass = new MemberVO();
	
		resultClass = (MemberVO)sqlMapper.queryForObject("member.idSelect", member_id);
		//쿼리문을 실행해서 객체를 받아 초기화한다.
		//System.out.println(memresultClass.getMember_id() + " get test");
		if(resultClass!=null && resultClass.getMember_id()!=null && !(resultClass.getMember_id().equals(""))){
			if (member_pw.equals(resultClass.getMember_pw())) {
				System.out.println(resultClass.getMember_id()+" getMember_id test");
				return true; //비번 맞으면 true.
			} else {
				return false; //비번 틀리면 fasle.
			}
		}
		return false;
}
	public String delete() throws Exception {

		if (session.get("member_pw").equals(getMember_pw())) {
			System.out.println("삭제전세션정보 : " + session.get("member_id")
					+ session.get("member_pw"));
			System.out.println("삭제전객체정보 : " + getMember_id()	+ getMember_pw());

			sqlMapper.delete("member.joinDelete", session.get("member_id"));

			if (session.get("member_id") != null) {
				session.remove("member_id");
				session.remove("member_pw");
			}
			
			return SUCCESS;
		}
		
		return ERROR;
	}
	
	public String idSearch() throws Exception {
	
		MemberVO paramClass = new MemberVO();
		resultClass = new MemberVO();
		
		paramClass.setMember_name(getMember_name());
		paramClass.setMember_jumin1(getMember_jumin1());
		paramClass.setMember_jumin2(getMember_jumin2());
		
		resultClass = (MemberVO) sqlMapper.queryForObject("member.idSearch", paramClass);
		
		if(resultClass == null) {
			return ERROR;
		} else {
			System.out.println(resultClass.getMember_id());
			
			return SUCCESS;
		}
	}

	public String pwSearch() throws Exception {
	
		System.out.println(member_id);
		System.out.println(member_name);
		System.out.println(member_jumin1);
		System.out.println(member_jumin2);
		
		paramClass.setMember_id(getMember_id());
		paramClass.setMember_name(getMember_name());
		paramClass.setMember_jumin1(getMember_jumin1());
		paramClass.setMember_jumin2(getMember_jumin2());
		
		resultClass = (MemberVO) sqlMapper.queryForObject("member.pwSearch", paramClass);
		
		if(resultClass == null) {
			return ERROR;
		} else {
			System.out.println(resultClass.getMember_pw());
			
			return SUCCESS;
		}
	}
	
	public String getMember_id() {
		return member_id;
	}
	
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	
	public String getMember_pw() {
		return member_pw;
	}
	
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	
	public Map getSession() {
		return session;
	}
	
	public void setSession(Map session) {
		this.session = session;
	}
	
	public MemberVO getResultClass() {
		return resultClass;
	}
	
	public void setResultClass(MemberVO resultClass) {
		this.resultClass = resultClass;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}


	public MemberVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(MemberVO paramClass) {
		this.paramClass = paramClass;
	}

	public int getMember_jumin1() {
		return member_jumin1;
	}

	public void setMember_jumin1(int member_jumin1) {
		this.member_jumin1 = member_jumin1;
	}

	public int getMember_jumin2() {
		return member_jumin2;
	}

	public void setMember_jumin2(int member_jumin2) {
		this.member_jumin2 = member_jumin2;
	}
	
	
	

}
