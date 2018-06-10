package main;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.opensymphony.xwork2.ActionSupport;


public class MainAction extends ActionSupport {

	public String execute() {
		return SUCCESS;
	}
	
	public String mypage(){
		return SUCCESS;
	}
	public String searchForm(){
		return SUCCESS;
	}
}
