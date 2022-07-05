<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="col-6" style="position: absolute; top: 45%; left: 50%; transform: translate(-50%, -50%); z-index: 10;">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">

			<div class="modal-header">
				<h4 class="modal-title">Modal Heading</h4>
				<button type="button" class="btn-close"></button>
			</div>

			<div class="modal-body">
				<input type="text" placeholder="삭제 사유를 입력하세요" name="reason"
					style="width: 100%">
			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-danger">삭제 확인</button>
			</div>

		</div>
	</div>
</div>