package admin;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.sql.Timestamp;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;




public class AdminMemberList extends ActionSupport {
	public static Reader reader; // 占쏙옙占쏙옙 占쏙옙트占쏙옙占쏙옙 占쏙옙占쏙옙 reader.
	public static SqlMapClient sqlMapper; // SqlMapClient API占쏙옙 占쏙옙占쏙옙歐占� 占쏙옙占쏙옙 sqlMapper
											// 占쏙옙체.

	private List<AdminMemberVO> list = new ArrayList<AdminMemberVO>();
	private String searchKeyword;
	private int searchNum;
	
	private String member_id;
	private String member_nm;
	private Timestamp member_join_date;
	


	private int currentPage = 1; // 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙
	private int totalCount; // 占쏙옙 占쌉시뱄옙占쏙옙 占쏙옙
	private int blockCount = 5; // 占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쌉시뱄옙占쏙옙 占쏙옙
	private int blockPage = 5; // 占쏙옙 화占썽에 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙
	private String pagingHtml; // 占쏙옙占쏙옙징占쏙옙 占쏙옙占쏙옙占쏙옙 HTML
	private AdminMemberPaging page; // 占쏙옙占쏙옙징 클占쏙옙占쏙옙
	private int num = 0; // ???
	
	private AdminMemberVO paramClass;
	private AdminMemberVO resultClass;
	
	public AdminMemberList() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); // sqlMapConfig.xml
																	// 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
																	// 占쏙옙占쏙옙占승댐옙.
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); // sqlMapConfig.xml占쏙옙
																	// 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙
																	// sqlMapper
																	// 占쏙옙체 占쏙옙占쏙옙.
		reader.close();
	}
	
	public String form() throws Exception {
		list = sqlMapper.queryForList("adminMember.adminMemberSelectAll"); // 占쏙옙占� 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙트占쏙옙 占쌍는댐옙.
		System.out.println("list >> " + list.get(0));
		totalCount = list.size(); // 占쏙옙체 占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占싼댐옙.
		// pagingAction 占쏙옙체 占쏙옙占쏙옙.
		page = new AdminMemberPaging(currentPage, totalCount, blockCount, blockPage, num, "");
		pagingHtml = page.getPagingHtml().toString(); // 占쏙옙占쏙옙占쏙옙 HTML 占쏙옙占쏙옙.

		// 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙호 占쏙옙占쏙옙.
		int lastCount = totalCount;

		// 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙호占쏙옙 占쏙옙체占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙 占쏙옙호占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙
		// lastCount占쏙옙 +1 占쏙옙호占쏙옙 占쏙옙占쏙옙.
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// 占쏙옙체 占쏙옙占쏙옙트占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙큼占쏙옙 占쏙옙占쏙옙트占쏙옙 占쏙옙占쏙옙占승댐옙.
		list = list.subList(page.getStartCount(), lastCount);
		
	
		return SUCCESS;
		
		
	}
	
	public String detail() throws Exception {
		resultClass = new AdminMemberVO(); 
		System.out.println("member_id >> " + member_id);
		
		resultClass = (AdminMemberVO) sqlMapper.queryForObject("adminMember.adminMemberSelectOne", member_id);
		
		return SUCCESS;
	}
	
	public String execute() throws Exception {	

		list = sqlMapper.queryForList("adminMember.adminMemberSelectAll"); // 占쏙옙占� 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙트占쏙옙 占쌍는댐옙.
		
		System.out.println("list >> " + list.get(0));
		/*
		totalCount = list.size(); // 占쏙옙체 占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占싼댐옙.
		// pagingAction 占쏙옙체 占쏙옙占쏙옙.
		page = new AdminMemberPaging(currentPage, totalCount, blockCount, blockPage, num, "");
		pagingHtml = page.getPagingHtml().toString(); // 占쏙옙占쏙옙占쏙옙 HTML 占쏙옙占쏙옙.

		// 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙호 占쏙옙占쏙옙.
		int lastCount = totalCount;

		// 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙호占쏙옙 占쏙옙체占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙 占쏙옙호占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙
		// lastCount占쏙옙 +1 占쏙옙호占쏙옙 占쏙옙占쏙옙.
		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		// 占쏙옙체 占쏙옙占쏙옙트占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙큼占쏙옙 占쏙옙占쏙옙트占쏙옙 占쏙옙占쏙옙占승댐옙.
		list = list.subList(page.getStartCount(), lastCount);
*/
		return SUCCESS;
	}
	
	public String delete() throws Exception {
		paramClass = new AdminMemberVO();
		resultClass = new AdminMemberVO();
		
		resultClass = (AdminMemberVO) sqlMapper.queryForObject("adminMember.adminMemberSelectOne", member_id);

		paramClass.setMember_id(member_id);
		
		sqlMapper.delete("adminMember.adminMemberDeleteMember",paramClass);
		
		return SUCCESS;
	}

	public String search() throws Exception {

		if (searchNum == 0) {
			list = sqlMapper.queryForList("adminMember.adminMemberSearchId", "%" + getSearchKeyword() + "%");
		}
		if (searchNum == 1) {
			list = sqlMapper.queryForList("adminMember.adminMemberSearchName", "%" + getSearchKeyword() + "%");
		}
		if (searchNum == 2) {
			list = sqlMapper.queryForList("adminMember.adminMemberSearchDate", "%" + getSearchKeyword() + "%");
		}

		totalCount = list.size();
		page = new AdminMemberPaging(currentPage, totalCount, blockCount, blockPage, searchNum, getSearchKeyword());
		pagingHtml = page.getPagingHtml().toString();

		int lastCount = totalCount;

		if (page.getEndCount() < totalCount)
			lastCount = page.getEndCount() + 1;

		list = list.subList(page.getStartCount(), lastCount);
		return SUCCESS;

	}

	
	public static Reader getReader() {
		return reader;
	}

	public static void setReader(Reader reader) {
		AdminMemberList.reader = reader;
	}

	public static SqlMapClient getSqlMapper() {
		return sqlMapper;
	}

	public static void setSqlMapper(SqlMapClient sqlMapper) {
		AdminMemberList.sqlMapper = sqlMapper;
	}

	public List<AdminMemberVO> getList() {
		return list;
	}

	public void setList(List<AdminMemberVO> list) {
		this.list = list;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public int getSearchNum() {
		return searchNum;
	}

	public void setSearchNum(int searchNum) {
		this.searchNum = searchNum;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getBlockCount() {
		return blockCount;
	}

	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}

	public int getBlockPage() {
		return blockPage;
	}

	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}

	public String getPagingHtml() {
		return pagingHtml;
	}

	public void setPagingHtml(String pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public AdminMemberPaging getPage() {
		return page;
	}

	public void setPage(AdminMemberPaging page) {
		this.page = page;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_nm() {
		return member_nm;
	}

	public void setMember_nm(String member_nm) {
		this.member_nm = member_nm;
	}

	public Timestamp getMember_join_date() {
		return member_join_date;
	}

	public void setMember_join_date(Timestamp member_join_date) {
		this.member_join_date = member_join_date;
	}

	public AdminMemberVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(AdminMemberVO paramClass) {
		this.paramClass = paramClass;
	}

	public AdminMemberVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(AdminMemberVO resultClass) {
		this.resultClass = resultClass;
	}

}
