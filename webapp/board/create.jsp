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
					<p>If you want your form elements to appear side by side, use.row and .col:</p>
					<form action="/bod/create" method="post" enctype="multipart/form-data">
				    <input type="hidden" value="${lo_session.email }" name="writer" readonly>
						<div class="row">
							<div class="col">
								<input type="text" class="form-control" placeholder="Enter title" name="title">
							</div>
						</div>
						<div class="row">
							<div class="col">
								<input type="number" class="form-control" placeholder="Enter price" name="price">
							</div>
							<div class="col">
								<input type="text" class="form-control" placeholder="Enter made by" name="made_by">
							</div>
							<div class="col">
								<input type="text" class="form-control" placeholder="Enter category" name="category">
							</div>
						</div>
						<div class="row">
              <div class="col">
                <input type="text" class="form-control" placeholder="Enter description" name="description">
              </div>
            </div>
						<div class="row">
              <div class="col">
                <input type="file" class="form-control" id="file" name="imageFile" 
                accept="image/png, image/jpeg, image/jpg, image/gif">
              </div>
            </div>
						<button type="submit">Create</button>
					</form>
				</div>


			</div>
		</div>
	</div>
</div>

<jsp:include page="../footer.jsp" />