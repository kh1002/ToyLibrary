

<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>장난감 예약 내역</title>


</head>

<body>

<section class="padding-top30">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-12 col-xs-12">
				<form>
				
				
							<style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>
                           <span class="jua" style="font-size:24pt; color:#774be9;">예약목록</span>
					<div class="cart-table table-responsive">
						<table class="table">
							<thead>
								<tr>
									<!-- <th class="text-center"></th> -->
									<th class="text-center">장난감번호</th>
									<th class="text-center">장난감이름</th>
									<th class="text-center">예약지점</th>
									<th class="text-center">예약일</th>
									<th class="text-center">대여가능기한</th>
									<th class="text-center">상태</th>
									<th class="text-center">예약취소</th>
								</tr>
							</thead>
							
							<!-- 반복문의 시작 -->
							<s:iterator value="MyReservationlist" status="stat">
		
							<s:url id = "myReserveCancleURL" action="MyReservationModifyStateAction" >
								<s:param name="toy_id">
									<s:property value="toy_id" />
								</s:param>
								<s:param name="member_id">
									<s:property value="member_id" />
								</s:param>
							</s:url>
							
							<tbody>
								<tr>
									<td class="text-center"><s:property value="toy_id"/></td>
									<td class="text-center"><s:property value="toy_name"/></td>
									<td class="text-center"><s:property value="zizum_name"/></td>
									<td class="text-center"><s:property value="reserve_date"/></td>
									<td class="text-center"><s:property value="return_date"/></td>
									<td class="text-center"><s:property value="state_code"/></td>
									<td class="text-center"><s:a href="%{myReserveCancleURL}"><span style="color:#ff3366;">예약 취소</span></s:a></td>
								</tr>
							</tbody>
							
							</s:iterator>
							
							<s:if test="MyReservationlist.size() <=0">
							
							<tr bgcolor="#ffffff" align="center">
								<td colspan="5">등록된 게시물이 없습니다.</td>
							</tr>
							</s:if>
		
						</table>
					</div>
				</form>
			</div>
		</div>

	</div>
</section>

</body>


</html>