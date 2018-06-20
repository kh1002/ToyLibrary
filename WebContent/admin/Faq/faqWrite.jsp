<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>자주묻는질문 쓰기</title>
		<script type="text/javascript">
		function validation()
		{
			var frm = document.forms(0);
			
			if(frm.faq_subject.value == "") 
			{
				alert("제목을 입력해주세요.");
				return false;
			} 
			else if(frm.faq_content.value == "") 
			{
				alert("내용을 입력해주세요.");
				return false;			
			} 
			
			return true;
		}
	</script>
</head>
<body>
<section class="padding-top50">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <form>
                    <div class="cart-table table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center" colspan="2">Write</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td align="right" colspan="2">
                                        <font color="#FF0000">*</font>
                                   			     는 필수 입력사항입니다.
                                    </td>
                                </tr>
                                <tr class="text-left">
                                    <td><font color="#FF0000">*</font><b>제목</b></td>
                                    <td><s:textfield name="faq_subject" theme="simple" value="%{resultClass.faq_subject}" maxlength="50" /></td>
                                </tr>

                                <tr class="text-left">
                                    <td><font color="#FF0000">*</font><b>내용</b></td>
                                    <td><s:textarea name="faq_content" theme="simple" value="%{resultClass.faq_content}" cols="50" rows="10" /></td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                </form>
            </div>
    </section>
        <tr>
          <td align="right" colspan="2">
          	<input name="submit" type="submit" value="작성완료"/>
            <input name="list" type="button" value="목록" onClick="javascript:location.href='faqListAction.action?currentPage=<s:property value="currentPage" />'"/>
          </td>
        </tr>
        
	</table>
	
	</form>
</body>
</html>