<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp" />

<div class="slider-1 bg-gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">

				<div class="container mt-3">
					<h2>New Board</h2>
					<p>If you want your form elements to appear side by side,
						use.row and .col:</p>
					<form action="/bod/modify">

						<div class="row">
							<div class="col">
								<p>${pdDetail.bno }</p>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<p>${pdDetail.title }</p>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<p>${pdDetail.price }</p>
							</div>
							<div class="col">
								<p>${pdDetail.made_by }</p>
							</div>
							<div class="col">
								<p>${pdDetail.reg_at }</p>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<p>${pdDetail.writer }</p>
							</div>
							<div class="col">
								<p>${pdDetail.category }</p>
							</div>
							<div class="col">
								<p>${pdDetail.description }</p>
							</div>
						</div>
						<div class="row">
							<div class="col">${pdDetail.mod_at }</div>
							<div class="col">${pdDetail.read_count }</div>
							<c:if test="${pdDetail.image_file ne '' || pdDetail.image_file ne null }">
						    <div class="col">
						      <img id="imgFile" src="/_fileUpload/th_${pdDetail.image_file }">
									<button type="button" class="btn btn-outline-danger" id="fileDelBtn">File Del</button>
								</div>
							</c:if>
						</div>

						<button type="submit" class="btn btn-outline-warning">Modify</button>
					</form>
				</div>

				<!-- Questions -->
				<div class="accordion-1">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<h2 class="h2-heading">Board Comment</h2>
								<div class="input-group mb-3">
									<span class="input-group-text" id="cmtWriter">${login_session.email }</span> 
									<input type="text" class="form-control" id="cmtText" placeholder="Add Comment">
									<button class="btn btn-success" type="button" id="cmtAddBtn">ADD</button>
								</div>
							</div>
							<!-- end of col -->
						</div>
						<!-- end of row -->
						<div class="row">
							<div class="col-lg-12">
								<div class="accordion" id="accordionExample">

									<!-- Accordion Item -->
									<div class="accordion-item">
										<h2 class="accordion-header" id="headingOne">
											<button class="accordion-button" type="button"
												data-bs-toggle="collapse" data-bs-target="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne">cno, bno, writer</button>
										</h2>
										<div id="collapseOne" class="accordion-collapse collapse show"
											aria-labelledby="headingOne"
											data-bs-parent="#accordionExample">
											<div class="accordion-body">content, mod_at</div>
										</div>
									</div>
									<!-- end of accordion-item -->
								</div>
								<!-- end of accordion -->
							</div>
							<!-- end of col -->
						</div>
						<!-- end of row -->
					</div>
					<!-- end of container -->
				</div>
				<!-- end of accordion-1 -->
				<!-- end of questions -->

			</div>
		</div>
	</div>
</div>
<script>const bnoVal = '<c:out value="${pdDetail.bno}"/>';</script>
<script src="/resources/js/board.detail.js"></script>
<script>
printCommentList(bnoVal);
</script>

<jsp:include page="../footer.jsp" />