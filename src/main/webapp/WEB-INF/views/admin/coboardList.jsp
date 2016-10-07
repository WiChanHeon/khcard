<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="container">
	<div class="row">
		
		
		
		
		<!-- 하단 영역 시작 -->
		<div class="col-sm-12">
		<h2>사내게시판</h2>
			
			<!-- 글쓰기 시작 -->
			<div class="y_right y_cowrite-btn">
				<button type="button" class="btn btn-primary" id="y_cb-write">글쓰기</button>
			</div>
			
			<div class="y_cowriteDiv">
				<form:form action="coboardWrite.do" enctype="multipart/form-data" commandName="command" id="y_cb-writeForm" style="display:none;">
					<ul>
						<li class="form-inline">
							<label for="m_id">작성자</label>
							<div>
								${sessionScope.adminName}(${sessionScope.adminId}) &nbsp;&nbsp;
								<select class="form-control" name="co_sort">
									<option value="0" selected>게시물</option>
									<option value="1">공지</option>
								</select>
							</div>
						</li>
						<li>
							<label for="co_title">제목</label>
							<form:input path="co_title" class="form-control" maxlength="20" placeholder="최대 20자"/>
						</li>
						<li>
							<label for="co_content">내용</label>
							<form:textarea path="co_content" class="form-control" rows="10"/>
						</li>
						<li>
							<label for="upload">첨부파일</label>
							<input type="file" name="upload" id="upload">
						</li>
						<li class="y_center y_clear">
							<input type="submit" value="등록">
							<input type="button" value="작성취소" id="y_cb-cancel">
						</li>
					</ul>
				</form:form>
			</div>
			<!-- 글쓰기 끝 -->
			
			
			<!-- 게시판 리스트 시작 -->
			<!-- 검색바 -->
			<c:if test="${empty param.keyword || param.keyword==''}">
			<form action="coboardList.do" id="y_coboard-searchBar">
				<div class="col-sm-2 col-sm-offset-3">
					<select class="form-control" name="keyfield">
							<option value="co_title">제목</option>
							<option value="co_content">내용</option>
							<option value="m_id">작성자ID</option>
							<option value="m_name">작성자명</option>
							<option value="all">전체검색</option>
					</select>
				</div>
				<div class="form-group input-group col-sm-4">
					<input type="text" class="form-control" name="keyword" maxlength="10" placeholder="최대 10자까지 검색할 수 있습니다.">
					<span class="input-group-btn">
						<button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
					</span>
				</div>
			</form>
			</c:if>
			
			<c:if test="${!empty param.keyword}">
			<div class="col-sm-2 col-sm-offset-5">
				<button class="btn btn-default" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/coboardList.do'"><span class="glyphicon glyphicon-repeat"></span> 전체목록으로</button>
			</div>
			</c:if>
			
			<!-- 게시판 -->
			<table class="y_cotable">
				<tr>
					<th>No.</th>
					<th width="50%">제목</th>
					<th>작성자</th>
					<th width="150px">등록일</th>
					<th>조회수</th>
				</tr>
				
				<c:if test="${empty colist}">
					<tr>
						<td colspan="5">등록된 게시물이 없습니다.</td>
					</tr>
				</c:if>
				
				<c:if test="${!empty colist}">
					<c:forEach var="colist" items="${colist}">
					<tr class="No${colist.co_sort}">
						<td>${colist.co_num}</td>
						<td class="y_left"><a href="${pageContext.request.contextPath}/admin/coboardDetail.do?co_num=${colist.co_num}">${colist.co_title}</a> <c:if test="${colist.co_re_count != 0}">&nbsp;&nbsp;<span class="badge y_badge">&nbsp;${colist.co_re_count}&nbsp;</span></c:if> </td>
						<td>${colist.m_name} (${colist.m_id}) </td>
						<td>${colist.co_reg}</td>
						<td>${colist.co_hit}</td>
					</tr>
					</c:forEach>
				</c:if>
				
			</table>
			<c:if test="${!empty colist}">
			<div class="y_center">
				${pagingHtml}
			</div>
			</c:if>
			<!-- 게시판 리스트 끝 -->
		
		
			<!-- 게시판 푸터 안내사항 시작 -->
			<div class="y_colist-footer">
				<hr>
					<p>게시판 이용 도중 오류가 발생하거나 문의사항이 있을 경우 <br>
					최고 관리자에게 문의해주시기 바랍니다. <br><br>
					<b>T. 02) 000 - 0000</b></p>
				<hr>
			</div>
			<!-- 게시판 푸터 안내사항 끝 -->
		
		</div>
		<!-- 하단 영역 끝 -->
		
		
	</div>
</div>