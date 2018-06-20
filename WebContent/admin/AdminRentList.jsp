<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>관리자 대여관리 리스트</title>
	<!-- <link rel="stylesheet" href="/strutsBoard/board/common/css/css.css" type="text/css"> -->

</head>

<body>

<section class="padding-top30">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-12 col-xs-12">
			
			<style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>
                           <span class="jua" style="font-size:24pt; color:#774be9;">대여 관리</span>
			
			
			
				<form>
					<div class="cart-table table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center">장난감번호</th>
									<th class="text-center">장난감이름</th>
									<th class="text-center">대여자</th>
									<th class="text-center">대여지점</th>
									<th class="text-center">예약일</th>
									<th class="text-center">대여가능기한</th>
									<th class="text-center">대여상태</th>
									<th class="text-center">상태수정</th>
								</tr>
							</thead>
							
							<s:iterator value="RentInfolist" status="stat">
										
							<s:url id = "viewURL" action="AdminRentDetailForm.action" >
								<s:param name="toy_id">
									<s:property value="toy_id" />
								</s:param>
							</s:url>
							
							<tbody>
								<tr>
									<td class="text-center"><s:property value="toy_id"/></td>
									<td class="text-center"><s:property value="toy_name"/></td>
									<td class="text-center"><s:property value="member_name"/></td>
									<td class="text-center"><s:property value="zizum_name"/></td>
									<td class="text-center"><s:property value="reserve_date"/></td>
									<td class="text-center"><s:property value="return_date"/></td>
									<td class="text-center"><s:property value="state_code"/></td>
									<td class="text-center"><s:a href="%{viewURL}">상태변경</s:a></td>
								</tr>
							</tbody>
							</s:iterator>
						</table>
					</div>
				</form>
			</div>
		</div>

	</div>
	</section>
	
<section class="padding-top30">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-12 col-xs-12">
			<s:if test="RentInfolist.size() <=0">
		
			<tr bgcolor="#ffffff" align="center">
				<td colspan="5">등록된 게시물이 없습니다.</td>
			</tr>
			</s:if>
			</div>	
		</div>
	</div>
</section>	


<table align="center">
		<tr>															
			<td>
			<form>
				<select name="searchNum" >
					<option value="0">이름</option>
				</select>
					
				<s:textfield name="searchKeyword" theme="simple" value="" cssStyle="width:120px" maxlength="20"/>
				<input name="submit" type="submit" value="검색" class="inputb"/>
			</form>
			</td>
		</tr>
		<tr align="center">
			<td colspan="5"><s:property value="pagingHtml" escape="false" /></td>
		</tr>
</table>
</body>
</html>