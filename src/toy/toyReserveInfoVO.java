package toy;

import java.util.Date;

public class toyReserveInfoVO {
	
	private int toy_id;
	private String toy_name;
	private String toy_image; //이미지파일이 이게 맞나??
	private String toy_detail;
	private String toy_gusung;
	private String toy_age;
	private int original_zizum;
	private int zizum_no;
	private String state_code; 
	private Date toy_reg_date; //오늘 날짜 구하기
	
	private  int reserve_no;
	private String member_id;
	private int reserve_zizum;
	private Date reserve_date;
	private Date return_date;
	
	
	public int getToy_id() {
		return toy_id;
	}
	public void setToy_id(int toy_id) {
		this.toy_id = toy_id;
	}
	public String getToy_name() {
		return toy_name;
	}
	public void setToy_name(String toy_name) {
		this.toy_name = toy_name;
	}
	public String getToy_image() {
		return toy_image;
	}
	public void setToy_image(String toy_image) {
		this.toy_image = toy_image;
	}
	public String getToy_detail() {
		return toy_detail;
	}
	public void setToy_detail(String toy_detail) {
		this.toy_detail = toy_detail;
	}
	public String getToy_gusung() {
		return toy_gusung;
	}
	public void setToy_gusung(String toy_gusung) {
		this.toy_gusung = toy_gusung;
	}
	public String getToy_age() {
		return toy_age;
	}
	public void setToy_age(String toy_age) {
		this.toy_age = toy_age;
	}
	public int getOriginal_zizum() {
		return original_zizum;
	}
	public void setOriginal_zizum(int original_zizum) {
		this.original_zizum = original_zizum;
	}
	public int getZizum_no() {
		return zizum_no;
	}
	public void setZizum_no(int zizum_no) {
		this.zizum_no = zizum_no;
	}
	public String getState_code() {
		return state_code;
	}
	public void setState_code(String state_code) {
		this.state_code = state_code;
	}
	public Date getToy_reg_date() {
		return toy_reg_date;
	}
	public void setToy_reg_date(Date toy_reg_date) {
		this.toy_reg_date = toy_reg_date;
	}



	public int getReserve_no() {
		return reserve_no;
	}
	public void setReserve_no(int reserve_no) {
		this.reserve_no = reserve_no;
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
	public Date getReserve_date() {
		return reserve_date;
	}
	public void setReserve_date(Date reserve_date) {
		this.reserve_date = reserve_date;
	}
	public Date getReturn_date() {
		return return_date;
	}
	public void setReturn_date(Date return_date) {
		this.return_date = return_date;
	}

	
	
}
