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


public class memberDeleteAction extends ActionSupport implements SessionAware {
	
	private Map session;
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private MemberVO paramClass;
	private MemberVO resultClass;
	private String member_id;
	private String member_pw;
	
	public memberDeleteAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String memberDeleteForm() throws Exception {
		return SUCCESS;
	}
	public String memberDeleteSuccess() throws Exception {
		return SUCCESS;
	}
	public String execute() throws Exception {
		
		MemberVO paramClass = new MemberVO();
		resultClass = new MemberVO();
		System.out.println(getMember_id());
		System.out.println(getMember_pw());
		String sessionId = (String) session.get("member_id");
		resultClass = (MemberVO) sqlMapper.queryForObject("member.selectOne", sessionId);
		
		if(resultClass != null) {
			System.out.println("getMember_pw()======"+getMember_pw());
			System.out.println("mresultClass.getMember_pw()======="+resultClass.getMember_pw());
			
			if(resultClass.getMember_pw().equals(getMember_pw())) {
				
				sqlMapper.delete("member.joinDelete", resultClass);
			return SUCCESS;
			}
			else {
				return ERROR;
			}
		} else {
			return ERROR;
		}
	}

	public MemberVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(MemberVO paramClass) {
		this.paramClass = paramClass;
	}

	public MemberVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(MemberVO resultClass) {
		this.resultClass = resultClass;
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
	
	
}
