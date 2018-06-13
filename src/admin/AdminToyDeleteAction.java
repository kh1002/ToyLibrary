package admin;

import com.opensymphony.xwork2.ActionSupport;


import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import java.io.Reader;
import java.io.IOException;
import java.io.File;

public class AdminToyDeleteAction extends ActionSupport {
	
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	
	private toyProductVO paramClass; //파라미터를 저장할 객체
	private toyProductVO resultClass; //쿼리 결과 값을 저장할 객체
	
	private int toy_id;
	
	//이미지 경로는 자기의 webcontent의 image경로
	private String fileUploadPath="C:\\javaP\\ToyLibrary\\WebContent\\image\\";
	//private String fileUploadPath="C:\\Users\\황의겸\\Desktop\\Java\\ToyLibraryA\\WebContent\\image\\";
	
	
	//생성자
	public AdminToyDeleteAction() throws IOException {
		reader = Resources.getResourceAsReader("sqlMapConfig.xml"); //sqlMapConfig.xml 파일의 설정내용을 가져온다
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader); //sqlMapConfig.xml의 내용을 적용한 sqlMapper객체 생성
		reader.close();
	}
		
	public String execute() throws Exception {

		//파라미터와 리절트 객체 생성
		paramClass = new toyProductVO();
		resultClass = new toyProductVO();
		
		
		//해당 번호의 장난감을 가져온다
		resultClass = (toyProductVO) sqlMapper.queryForObject("selectOne", getToy_id());
		
		//삭제할 항목 설정
		paramClass.setToy_id(getToy_id());
		
		//삭제 쿼리 수행
		
		
		if(resultClass.getToy_image() != null)
		{
			File deleteFile = new File(fileUploadPath + resultClass.getToy_image());
			deleteFile.delete();
		}
		
		sqlMapper.delete("deleteToy", paramClass);
		
		return SUCCESS;
		
	}

	public toyProductVO getParamClass() {
		return paramClass;
	}

	public void setParamClass(toyProductVO paramClass) {
		this.paramClass = paramClass;
	}

	public toyProductVO getResultClass() {
		return resultClass;
	}

	public void setResultClass(toyProductVO resultClass) {
		this.resultClass = resultClass;
	}

	public int getToy_id() {
		return toy_id;
	}

	public void setToy_id(int toy_id) {
		this.toy_id = toy_id;
	}

	public String getFileUploadPath() {
		return fileUploadPath;
	}

	public void setFileUploadPath(String fileUploadPath) {
		this.fileUploadPath = fileUploadPath;
	}
	
	

}
