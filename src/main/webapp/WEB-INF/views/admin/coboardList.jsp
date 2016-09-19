<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="container">
	<div class="row">
		
		<!-- 좌측 영역 -->
		<div class="col-sm-9">
		<h2>최신글</h2>
		
			<!-- 자유게시판 시작 -->
			<div class="row">
			<div class="col-xs-12">
				<h3>Article Title</h3>
				<p>
                         Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
             Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
             dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
             Aliquam in felis sit amet augue.
				</p>
					<div class="text-center">
						<a href="#"><i class="fa fa-plus"></i>Full Story</a>
						<a href="#"><i class="fa fa-comment"></i>12 Comments</a>
						<a href="#"><i class="fa fa-share"></i>11 Shares</a>
					</div>
			</div>
			</div>
			<hr>
			
			
			<div class="row">
			<div class="col-xs-12">
				<h2>Article Title</h2>
				<p>
                         Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
             Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
             dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
             Aliquam in felis sit amet augue.
				</p>
					<div class="text-center">
						<a href="#"><i class="fa fa-plus"></i>Full Story</a>
						<a href="#"><i class="fa fa-comment"></i>12 Comments</a>
						<a href="#"><i class="fa fa-share"></i>11 Shares</a>
					</div>
			</div>
			</div>
			<hr>
			
			<div class="row">
			<div class="col-xs-12">
				<h2>Article Title</h2>
				<p>
                         Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
             Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
             dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
             Aliquam in felis sit amet augue.
				</p>
					<div class="text-center">
						<a href="#"><i class="fa fa-plus"></i>Full Story</a>
						<a href="#"><i class="fa fa-comment"></i>12 Comments</a>
						<a href="#"><i class="fa fa-share"></i>11 Shares</a>
					</div>
			</div>
			</div>
			<hr>
			<!-- 자유게시판 끝 -->
			
			
		</div>
		<!-- 좌측 영역 끝 -->
			
			
		<!-- 우측 내부 공지 시작-->
		<div class="col-sm-3">
		<h2>사내 공지</h2>
		
			<div class="row">
			<div class="col-xs-12">
				

				<div class="panel panel-default">
					<div class="panel-heading">News</div>
					<div class="panel-body">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
					</div>
					
					<div class="text-center">
						<a href="#"><i class="fa fa-plus"></i>Full Story</a>
					</div>
				</div>
				<hr>
				
				
                   <div class="panel panel-default">
					<div class="panel-heading">News</div>
					<div class="panel-body">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
					</div>
					
					<div class="text-center">
						<a href="#"><i class="fa fa-plus"></i>Full Story</a>
					</div>
				</div>
				<hr>
				
				<div class="panel panel-default">
					<div class="panel-heading">News</div>
					<div class="panel-body">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
					</div>
					
					<div class="text-center">
						<a href="#"><i class="fa fa-plus"></i>Full Story</a>
					</div>
				</div>
				<hr>

			</div>
			</div>
		</div>
		<!-- 우측 내부 공지 끝 -->
		
		
		<!-- 하단 영역 시작 -->
		<div class="col-sm-12">
		<h2>자유게시판</h2>
			
			<!-- 글쓰기 시작 -->
			<button type="button" class="btn btn-primary" id="y_cb-write">글쓰기</button>
			
			<form:form action="coboardWrite.do" enctype="multipart/form-data" commandName="command" id="y_cb-writeForm" style="display:none;">
				<ul>
					<li>
						<label for="m_id">작성자</label>
						${sessionScope.adminName}(${sessionScope.adminId})
						<select name="co_sort">
							<option value="0" selected>게시물</option>
							<option value="1">공지</option>
						</select>
					</li>
					<li>
						<label for="co_title">제목</label>
						<form:input path="co_title"/>
					</li>
					<li>
						<label for="co_content">내용</label>
						<form:textarea path="co_content"/>
					</li>
					<li>
						<label for="co_filename">첨부파일</label>
						<input type="file" name="upload" id="upload">
					</li>
					<li>
						<input type="submit" class="btn btn-primary" value="등록">
						<input type="button" class="btn btn-default" value="작성취소" id="y_cb-cancel">
					</li>
				</ul>
			</form:form>
			<!-- 글쓰기 끝 -->
			
			
			<!-- 코멘트 시작 -->
			<!-- the comment box -->
			<%-- <div class="well">
				<h4>Leave a Comment:</h4>
				<form role="form">
					<div class="form-group">
						<textarea class="form-control" rows="3"></textarea>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
			<hr> --%>
			
			<!-- the comments -->
			<!-- <h3>Blog contents <small>2014/03/07 11:43 PM</small> </h3>
			<p>This is a very interesting blog, well structured and organized. Would be great if you included more information on other IT topics as well.</p>

			<h3>Blog contents <small>2014/03/07 11:43 PM</small> </h3>
			<p>This is a very interesting blog, well structured and organized. Would be great if you included more information on other IT topics as well. This is a very interesting blog, well structured and organized. Would be great if you included more information on other IT topics as well.</p> -->
			<!-- 코멘트 끝 -->
			
			
			
			<!-- 게시판 리스트 시작 -->
			<table class="y_cotable">
				<tr>
					<th>No.</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일</th>
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
						<td><a href="${pageContext.request.contextPath}/admin/coboardDetail.do?co_num=${colist.co_num}">${colist.co_title}</a></td>
						<td>${colist.m_name} (${colist.m_id}) </td>
						<td>${colist.co_reg}</td>
						<td>${colist.co_hit}</td>
					</tr>
					</c:forEach>
				</c:if>
				
			</table>
			
			
			
			<!-- 게시판 리스트 끝 -->
		
		
			<!-- 게시판 푸터 안내사항 시작 -->
			<div class="y_colist-footer">
				<hr>
					<p>게시판 이용 도중 오류가 발생할 경우 최고 관리자에게 문의해주시기 바랍니다. <br><br>
					<b>T. 02) 000 - 0000</b></p>
				<hr>
			</div>
			<!-- 게시판 푸터 안내사항 끝 -->
		
		</div>
		<!-- 하단 영역 끝 -->
		
		
	</div>
</div>