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

public class idCheckAction extends ActionSupport implements SessionAware{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private Map session;
	private MemberVO resultClass;
	
	private String member_id;
	private int chkId;
	
	public  idCheckAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String execute() throws Exception {
		
		resultClass = new MemberVO();
		
		if(getMember_id() != null) {
			resultClass = (MemberVO)sqlMapper.queryForObject("member.idCheck", getMember_id());
		}
		
		if(resultClass == null){
			chkId = 0;
		} else {
			chkId = 1;
		}
		
		System.out.println(getMember_id());
		System.out.println(resultClass);
		
		return SUCCESS;
	}

	

	public MemberVO getresultClass() {
		return resultClass;
	}

	public void setresultClass(MemberVO resultClass) {
		this.resultClass = resultClass;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getChkId() {
		return chkId;
	}

	public void setChkId(int chkId) {
		this.chkId = chkId;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

}