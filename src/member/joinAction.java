package member;

import com.opensymphony.xwork2.ActionSupport; 
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;


import member.MemberVO;
import org.apache.struts2.interceptor.SessionAware;

import java.util.*;
import java.io.Reader;
import java.sql.Timestamp;
import java.io.IOException;

public class joinAction extends ActionSupport implements SessionAware {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private MemberVO paramClass = new MemberVO();
	private MemberVO resultClass = new MemberVO();
	
		
	private Map session;
	
	private String member_id;
	private String member_pw;
	private String member_name;
	private int member_jumin1;
	private int member_jumin2;
	private String member_mail;
	private String member_phone;
	private String member_zipcode;
	private String member_addr1;
	private String member_addr2;
	private Timestamp member_join_date;
	
	public joinAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	
	public String form() throws Exception {
		return SUCCESS;
	}
	
	public String execute() throws Exception {
				
		paramClass.setMember_id(getMember_id());
		paramClass.setMember_pw(getMember_pw());
		paramClass.setMember_name(getMember_name());
		paramClass.setMember_jumin1(getMember_jumin1());
		paramClass.setMember_jumin2(getMember_jumin2());
		paramClass.setMember_mail(getMember_mail());
		paramClass.setMember_phone(getMember_phone());
		paramClass.setMember_zipcode(getMember_zipcode());
		paramClass.setMember_addr1(getMember_addr1());
		paramClass.setMember_addr2(getMember_addr2());
		paramClass.setMember_join_date(new Timestamp(System.currentTimeMillis()));
		
		sqlMapper.insert("member.joinInsert", paramClass);
	
		return SUCCESS;
	}

	public String delete() throws Exception {
		
		MemberVO paramClass = new MemberVO();
		resultClass = new MemberVO();
		System.out.println(getMember_id());
		System.out.println(getMember_pw());
		String sessionId = (String) session.get("member_id");
		resultClass = (MemberVO) sqlMapper.queryForObject("member.idSelect", sessionId);
		
		if(resultClass != null) {
			System.out.println("getMember_pw()======"+getMember_pw());
			System.out.println("resultClass.getMember_pw()======="+resultClass.getMember_pw());
			
			if(resultClass.getMember_pw().equals(getMember_pw())) {
				
				sqlMapper.delete("member.joinDelete", resultClass);
				session.remove("member_id");
				session.remove("member_pw");
			return SUCCESS;
			}
			else {
				return ERROR;
			}
		} else {
			return ERROR;
		}
	}
	
	public String modifyForm() throws Exception {
		
		paramClass = new MemberVO();
		resultClass = new MemberVO();
		
		paramClass.setMember_id(session.get("member_id").toString());
		
		System.out.println(member_id);
		System.out.println("member_id");
		
		resultClass = (MemberVO) sqlMapper.queryForObject("member.modifySelectOne", paramClass);
		
		
		return SUCCESS;
	}
	
	
	public String modify() throws Exception {
		
		paramClass = new MemberVO();
		resultClass = new MemberVO();
		
		//수정할 항목
		paramClass.setMember_pw(getMember_pw());
		paramClass.setMember_name(getMember_name());
		paramClass.setMember_jumin1(getMember_jumin1());
		paramClass.setMember_jumin2(getMember_jumin2());
		paramClass.setMember_zipcode(getMember_zipcode());
		paramClass.setMember_addr1(getMember_addr1());
		paramClass.setMember_addr2(getMember_addr2());
		paramClass.setMember_phone(getMember_phone());
		paramClass.setMember_mail(getMember_mail());
		paramClass.setMember_id(getMember_id());
		
		//일단항목만 수정
		int result = sqlMapper.update("member.joinModify", paramClass);
		System.out.println(result);
		
		return SUCCESS;
		
	}
	
	
	public void setSession(Map session) {
		// TODO Auto-generated method stub
		this.session = session;
	}
	
	public Map getSession() {
		return session;
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

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
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

	public String getMember_mail() {
		return member_mail;
	}

	public void setMember_mail(String member_mail) {
		this.member_mail = member_mail;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public String getMember_zipcode() {
		return member_zipcode;
	}

	public void setMember_zipcode(String member_zipcode) {
		this.member_zipcode = member_zipcode;
	}

	public String getMember_addr1() {
		return member_addr1;
	}

	public void setMember_addr1(String member_addr1) {
		this.member_addr1 = member_addr1;
	}

	public String getMember_addr2() {
		return member_addr2;
	}

	public void setMember_addr2(String member_addr2) {
		this.member_addr2 = member_addr2;
	}

	public Timestamp getMember_join_date() {
		return member_join_date;
	}

	public void setMember_join_date(Timestamp member_join_date) {
		this.member_join_date = member_join_date;
	}
	
	

}
