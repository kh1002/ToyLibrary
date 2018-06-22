<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

</head>

<body>

<!-- 장난감 등록한 리스트들을 출력하는 코드.
반복을 이용하여 출력해야 한다. -->

<!-- 반복 전 테이블의 제목들을 나타내는 코드 -->
<section class="padding-top30">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-12 col-xs-12">
			
			<style type="text/css">
                        .jua {font-family:'BM JUA','배달의민족 주아',sans-serif;}</style>
                           <span class="jua" style="font-size:24pt; color:#774be9;">장난감 목록</span>
			
			
			
				<form>
					<div class="cart-table table-responsive">
						<table class="table">
							<thead>
								<tr>
									<!-- <th class="text-center"></th> -->
									<th class="text-center">장난감번호</th>
									<th class="text-center">장난감사진</th>
									<th class="text-center">장난감이름</th>
									<th class="text-center">추천연령</th>
									<th class="text-center">현재상태</th>
									<th class="text-center">현재지점</th>
									<th class="text-center">수정/삭제</th>
								</tr>
							</thead>
<!-- 장난감 목록에 대한 리스트를 반복으로 나타내는 코드 -->

							<tbody>
							
							<s:iterator value="list" status="stat">
							<s:url id = "modifyURL" action="AdminToyModifyForm" >
								<s:param name="toy_id">
									<s:property value="toy_id" />
								</s:param>
							</s:url>
										
							<s:url id = "deleteURL" action="AdminToyDeleteAction" >
								<s:param name="toy_id">
									<s:property value="toy_id" />
								</s:param>
							</s:url>
								<tr>
									<td class="text-center"><s:property value="toy_id"/></td>
									<td class="text-center"><img id="imglink" src="/ToyLibrary/image/<s:property value="toy_image"/>" width=50" border="0"/></td>
									<td class="text-center"><s:property value="toy_name"/></td>
									<td class="text-center"><s:property value="toy_age"/></td>
									<td class="text-center"><s:property value="state_code"/></td>
									<s:if test="zizum_no == 1">
										<td class="text-center">강남점</td>
									</s:if>
									 <s:elseif test="zizum_no == 2">
										<td class="text-center">역삼점</td>
									</s:elseif>
									<s:elseif test="zizum_no == 3">
										<td class="text-center">교대점</td>
									</s:elseif>  
									<td class="text-center">
										<s:if test="zresultClass.admin_no == zizum_no">
									 		<s:a href="%{modifyURL}"><span style="color: #ff3366;">수정</s:a><span>
											/
											<s:a href="%{deleteURL}"><span style="color: #ff3366;">삭제</s:a></span>
									 	</s:if>
									 	<s:else>
									 		<span style="color: #ff3366;">수정</span>
									 		/
									 		<span style="color: #ff3366;">삭제</span>
									 	</s:else>
									</td>
								</tr>
								
							</s:iterator>	
							</tbody>
						</table>
					</div>
				</form>
			</div>
		</div>

	</div>
	</section>

<!--  반복의 끝이란다 -->


<!-- 검색창을 보여주는 jsp코드 -->

<table align="center">
		<tr>															
			<td>
			
			<form method="post">
				<select name="searchNum" >
					<option value="0">이름</option>
					<option value="1">현재지점</option>
					<option value="2">현재상태</option>
				</select>
					
				<s:textfield name="searchKeyword" theme="simple" value="" cssStyle="width:120px" maxlength="20"/>
				<input name="submit" type="submit" value="검색" class="inputb"/>
			</form>
				
			</td>
		</tr>
</table>

<!-- 장난감등록 링크를 나타내는 소스. (버튼으로 바꿀까??) -->
<table  style="margin-left: 700px;">
	<tr>
		<td>
		
		 <button class="btn btn-1" type="button" onclick="javascript:location.href='AdminToyWriteForm.action';" style="background-color: #87df2d;">                                   
				       <span class="txt" style="color:#fff; font-family:sans-serif; font-weight: bold;">장난감 등록</span>
				       <span class="round"><i class="fa fa-chevron-right" style="color:white;"></i></span>
		</button>
		</td>
	</tr>
</table>


</body>

</html>