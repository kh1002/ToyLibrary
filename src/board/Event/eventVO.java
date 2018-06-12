package board.Event;

public class eventVO 
{
	int event_no;
	String event_subject;
	String event_content;
	String event_startday;
	String event_endday;
	String file_orgname;
	String file_savname;
	String event_position;
	int event_readcount;
	
	
	public int getEvent_no() {
		return event_no;
	}
	public void setEvent_no(int event_no) {
		this.event_no = event_no;
	}
	public String getEvent_subject() {
		return event_subject;
	}
	public void setEvent_subject(String event_subject) {
		this.event_subject = event_subject;
	}
	public String getEvent_content() {
		return event_content;
	}
	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}
	public String getEvent_startday() {
		return event_startday;
	}
	public void setEvent_startday(String event_startday) {
		this.event_startday = event_startday;
	}
	public String getEvent_endday() {
		return event_endday;
	}
	public void setEvent_endday(String event_endday) {
		this.event_endday = event_endday;
	}
	
	
	public String getFile_orgname() {
		return file_orgname;
	}
	public void setFile_orgname(String file_orgname) {
		this.file_orgname = file_orgname;
	}
	public String getFile_savname() {
		return file_savname;
	}
	public void setFile_savname(String file_savname) {
		this.file_savname = file_savname;
	}
	public int getEvent_readcount() {
		return event_readcount;
	}
	public void setEvent_readcount(int event_readcount) {
		this.event_readcount = event_readcount;
	}
	public String getEvent_position() {
		return event_position;
	}
	public void setEvent_position(String event_position) {
		this.event_position = event_position;
	}
	
	
}
