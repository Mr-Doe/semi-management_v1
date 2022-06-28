<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp" />

<div class="slider-1 bg-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">

				<div class="container mt-3">
					<h2>Board Table</h2>
					<p>The .table class adds basic styling (light padding and
						horizontal dividers) to a table:</p>
					<table class="table">
						<form action="/bod/new"><button class="btn btn-primary">New</button></form>
						<thead>
							<tr>
								<th>No.</th>
								<th>Title</th>
								<th>Price</th>
								<th>Read Cnt</th>
								<th>Time</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="bvo" items="${bList }">
								<tr>
									<td>${bvo.bno }</td>
									<td><a href="/bod/one?bno=${bvo.bno }">${bvo.title }</a></td>
									<td>${bvo.price }</td>
									<td>${bvo.read_count }</td>
									<td>${bvo.mod_at }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>
</div>

<jsp:include page="../footer.jsp" />