package toy;

import java.util.Date;

public class toyReserveVO {
	
	private int reserve_no;
	private int toy_id;
	private String member_id;
	private int reserve_zizum;
	private Date reserve_date;
	private Date return_date;
	

	public int getReserve_no() {
		return reserve_no;
	}
	public void setReserve_no(int reserve_no) {
		this.reserve_no = reserve_no;
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
