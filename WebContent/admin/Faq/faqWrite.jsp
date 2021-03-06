<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>자주묻는질문</title>

<script type="text/javascript">
	function validation()
	{
		var frm = document.forms(0);

		if(frm.faq_subject.value == "")
		{
			alert("제목을 입력해주세요");
			return false;
		}
		else if(frm.faq_content.value == "")
		{
			alert("내용을 입력해주세요");
			return false;
		}

		return true;
	}
	
	 $(document).ready(function(){
		 $("#faq_content").cleditor();
	 });
</script>
</head>
<body>
    <section class="padding-top30">
            <div class="container">           
                <div class="row">
                    <div class="col-md-9 col-sm-6 col-xs-12">
                    
                     <s:if test="resultClass ==null">
                <form action="faqWriteAction.action" method="post" enctype="multipart/form-data" onsubmit="return validation();">
                 </s:if>  
                 <s:else>
                 <form action="faqModifyAction.action" method="post" enctype="multipart/form-data" >
                       <s:hidden name="faq_no" value="%{resultClass.faq_no}"/>
     				   <s:hidden name="currentPage" value="%{currentPage}"/>
                 </s:else>
                                            
                            <div class="cart-table table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr><th class="text-center"  colspan="2">자주묻는질문</th></tr>
                                    </thead>
                                    <tbody>
                                        <tr class="text-left">
                                            <td><b>제목</b></td>
                                            <td>               
                                                <s:textfield name="faq_subject" theme="simple" value="%{resultClass.faq_subject}" maxlength="50"></s:textfield>
                                            </td>
                                        </tr>

                                         <tr class="text-left">
                                            <td><b>내용</b></td>
                                            <td>               
                                               <s:textarea name="faq_content" theme="simple" value="%{resultClass.faq_content}" cols="50" rows="10" />
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                                
                                <div class="site-btn" style="margin-left: 600px;">
					                <button class="btn btn-1" type="submit">                                 
					                    <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">작성완료</span>	
					                    <span class="round"><i class="fa fa-chevron-right" style="color:white"></i></span>
					                </button>                 
						                 <button class="btn btn-1" type="button" onClick="javascript:location.href='faqListAction.action?currentPage=<s:property value="currentPage" />'">                              
						                    <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">목록</span>
						                    <span class="round"><i class="fa fa-chevron-right" style="color:white;"></i></span>
					                    
					                </button>
					            </div>
                                
                                
                            </div>
                        </form>
                    </div> 
				</div> 
			</div>	                     
        </section>  
<%--         <tr>
        
        
        
        <tr>
          <td align="right" colspan="2">
          	<input name="submit" type="submit" value="작성완료">
          	
          	<div class="site-btn">
                <button class="btn btn-1" type="submit">                                 
                    <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">작성완료</span>
                    <span class="round"><i class="fa fa-chevron-right" style="color:white"></i></span>
                </button>                 
                <button class="btn btn-1" type="button" onclick="javascript:location.href='userReviewListAction.action?currentPage=<s:property value="currentPage" />'">                                   
                    <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">목록</span>
                    <span class="round"><i class="fa fa-chevron-right" style="color:white;"></i></span>
                </button>
            </div> --%>
          	
          	
       <%--    	<button class="btn" type="button"
				onclick="javascript:location.href='userReviewListAction.action?currentPage=<s:property value="currentPage" />'"
				class="btn_small3" style="background-color: #87df2d;">
				<span class="txt"
					style="color: #fff; font-family: sans-serif; font-weight: bold;">목록</span>
				<span class="round" style="background-color: #35beea;"><i
					class="fa fa-chevron-right" style="color: white;"></i></span>
			</button> --%>

</body>
</html>