package user.Review;

import com.opensymphony.xwork2.ActionSupport;

import board.Event.eventVO;
import user.Review.userReviewVO;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.util.*;
import java.io.Reader;
import java.io.IOException;

import java.io.File;
import org.apache.commons.io.FileUtils;




import member.MemberVO;
import org.apache.struts2.interceptor.SessionAware;
import java.sql.Timestamp;





public class userReviewWriteAction extends ActionSupport implements SessionAware{
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	private userReviewVO paramClass;
	private userReviewVO resultClass;

	
	private int currentPage;
	
	private int review_no;
	private String review_subject;
	private String review_content;
	private String review_name;
	private String review_password;

	private String file_orgName;
	private String file_savName;
	
	private MemberVO mparamClass = new MemberVO();
	private MemberVO mresultClass = new MemberVO();
	
		
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

	Calendar today = Calendar.getInstance();
	
	private List<File> uploads = new ArrayList<File>();
	private List<String> uploadsFileName = new ArrayList<String>();
	private List<String> uploadsContentType = new ArrayList<String>();
	private String fileUploadPath="C:\\Users\\황의겸\\Desktop\\Java\\AdminBoard\\WebContent\\reviewImage\\";
	
	
	public userReviewWriteAction() throws IOException
	{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();

	}
	
	public String form() throws Exception
	{
		if (session.get("member_id") != null){
		
		mparamClass = new MemberVO();
		mresultClass = new MemberVO();
		
		mparamClass.setMember_id(session.get("member_id").toString());
		
		System.out.println(member_id);
		System.out.println("member_id");
		
		mresultClass = (MemberVO) sqlMapper.queryForObject("member.boardSelectOne", mparamClass);
		
		return SUCCESS;
		} else {
			return LOGIN;
		}
		
	}
	
	

	public String execute() throws Exception {
		
		paramClass = new userReviewVO();
		resultClass = new userReviewVO();
		
		
		
		paramClass.setReview_subject(getReview_subject());
		paramClass.setReview_name(getReview_name());
		paramClass.setReview_password(getReview_password());
		paramClass.setReview_content(getReview_content());
		paramClass.setReview_regdate(today.getTime());
		
		
		sqlMapper.insert("userReview-insert", paramClass);
		
		
		if(getUploads() != null)
		{
			
			
			
			resultClass = (userReviewVO) sqlMapper.queryForObject("userReview-selectLastNo");
			
			StringBuffer sb = new StringBuffer();
			StringBuffer sb1 = new StringBuffer();
			
		
			for(int i=0; i<uploads.size(); i++)
			{
				String file_name = "file_" + resultClass.getReview_no()+"_"+i;
				String file_ext = getUploadsFileName().get(i).substring(getUploadsFileName().get(i).lastIndexOf('.') + 1,getUploadsFileName().get(i).length());
				File destFile = new File(fileUploadPath +file_name+"."+file_ext);
				
				if(i==uploads.size()) {
					sb.append(getUploadsFileName().get(i));
					sb1.append(file_name+"."+file_ext);
				}else {
					sb.append(getUploadsFileName().get(i)+",");
					sb1.append(file_name+"."+file_ext+",");
				}
				FileUtils.copyFile(getUploads().get(i), destFile);
			}
			
			paramClass.setReview_no(resultClass.getReview_no());
			paramClass.setFile_orgname(sb.toString());
			paramClass.setFile_savname(sb1.toString());
			
			sqlMapper.update("userReview-updateFile", paramClass);
		}

		return SUCCESS;
	}
	
	

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		userReviewWriteAction.sqlMapper = sqlMapper;
	}

	public userReviewVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(userReviewVO paramClass) {
		this.paramClass = paramClass;
	}

	public userReviewVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(userReviewVO resultClass) {
		this.resultClass = resultClass;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public String getReview_subject() {
		return review_subject;
	}

	public void setReview_subject(String review_subject) {
		this.review_subject = review_subject;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public String getReview_name() {
		return review_name;
	}

	public void setReview_name(String review_name) {
		this.review_name = review_name;
	}

	public String getReview_password() {
		return review_password;
	}

	public void setReview_password(String review_password) {
		this.review_password = review_password;
	}

	public String getFile_orgName() {
		return file_orgName;
	}

	public void setFile_orgName(String file_orgName) {
		this.file_orgName = file_orgName;
	}

	public String getFile_savName() {
		return file_savName;
	}

	public void setFile_savName(String file_savName) {
		this.file_savName = file_savName;
	}

	public Calendar getToday() {
		return today;
	}

	public void setToday(Calendar today) {
		this.today = today;
	}

	public List<File> getUploads() {
		return uploads;
	}

	public void setUploads(List<File> uploads) {
		this.uploads = uploads;
	}

	public List<String> getUploadsFileName() {
		return uploadsFileName;
	}

	public void setUploadsFileName(List<String> uploadsFileName) {
		this.uploadsFileName = uploadsFileName;
	}

	public List<String> getUploadsContentType() {
		return uploadsContentType;
	}

	public void setUploadsContentType(List<String> uploadsContentType) {
		this.uploadsContentType = uploadsContentType;
	}

	public String getFileUploadPath() {
		return fileUploadPath;
	}

	public void setFileUploadPath(String fileUploadPath) {
		this.fileUploadPath = fileUploadPath;
	}

	public MemberVO getMparamClass() {
		return mparamClass;
	}

	public void setMparamClass(MemberVO mparamClass) {
		this.mparamClass = mparamClass;
	}

	public MemberVO getMresultClass() {
		return mresultClass;
	}

	public void setMresultClass(MemberVO mresultClass) {
		this.mresultClass = mresultClass;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
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
