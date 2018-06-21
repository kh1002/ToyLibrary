<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>행사 쓰기</title>
		<script type="text/javascript">
		function validation()
		{
			var frm = document.forms(0);
			
			if(frm.event_subject.value == "") 
			{
				alert("제목을 입력해주세요.");
				return false;
			} 
			else if(frm.event_content.value == "") 
			{
				alert("내용을 입력해주세요.");
				return false;			
			} 
			
			return true;
		}
	</script>
</head>
<body>
 <section class="padding-top30">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-sm-6 col-xs-12">
                <form action="eventWriteAction.action" method="post" enctype="multipart/form-data">
                    <div class="cart-table table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center" colspan="2">글쓰기</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="text-left">
                                    <td><b>제목</b></td>
                                    <td><s:textfield name="event_subject" theme="simple" value="%{resultClass.event_subject}" maxlength="50" /></td>
                                </tr>

                                <tr class="text-left">
                                    <td><b>내용</b></td>
                                    <td><s:textarea name="event_content" theme="simple" value="%{resultClass.event_content}" cols="50" rows="10" /></td>
                                </tr>

                                <tr class="text-left">
                                    <td><b>행사날짜</b></td>
                                    <td><s:textfield name="event_startday" theme="simple" value="%{resultClass.event_startday}" maxlength="50" /> ~
                                     <s:textfield name="event_endday" theme="simple" value="%{resultClass.event_endday}" maxlength="50" /></td>
                                </tr>

                                <tr class="text-left">
                                    <td><b>행사장소</b></td>
                                    <td><s:textfield name="event_position" theme="simple" value="%{resultClass.event_position}" maxlength="50" /></td>
                                </tr>

                                <tr class="text-left">
                                    <td><b>이미지</b></td>
                                    <td>
                                        <s:file label="File(1)" name="uploads" />
                                         <s:file label="File(2)" name="uploads" />
                                        <s:file label="File(3)" name="uploads" /></td>
                                </tr>


                            </tbody>
                        </table>

					   <div class="site-btn">
					           <button class="btn btn-1" type="submit">                                 
					                <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">작성완료</span>
					                <span class="round"><i class="fa fa-chevron-right" style="color:white"></i></span>
					           </button> 
                  		       <button class="btn btn-1" type="button" onClick="javascript:location.href='eventListAction.action?currentPage=<s:property value="currentPage" />'"/>                                   
					                 <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">목록</span>
					                 <span class="round"><i class="fa fa-chevron-right" style="color:white;"></i></span>
					            </button>
					    </div>
                    </div>
                </form>
            </div>
    </section>
    </table>
	</form>
</body>
</html>