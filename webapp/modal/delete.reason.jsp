<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="modal-window" style="position: absolute; z-index: 10; width: 99.2vw; height: 100vh; background: rgba(0,0,0,.5);" hidden>
	<div class="modal-dialog modal-lg">
		<div class="modal-content">

			<div class="modal-header">
				<h4 class="modal-title">삭제 확인</h4>
				<button type="button" class="btn-close"></button>
			</div>
      
      <form>
			<div class="modal-body">
				<input type="text" placeholder="삭제 사유를 입력하세요" name="reason" style="width: 100%" required>
			</div>

			<div class="modal-footer">
			 <input tyep="text" value="" name="iid" hidden>
			 <input tyep="text" value="" name="classifi" hidden>
			 <input tyep="text" value="" name="vendor" hidden>
				<button type="submit" class="btn btn-danger">삭제</button>
			</div>
			</form>

		</div>
	</div>
</div>

<script src="/resources/js/modal.delete.reason.js"></script>