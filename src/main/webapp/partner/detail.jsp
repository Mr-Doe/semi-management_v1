<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp" />

<div class="container mt-3">
	<div class="d-flex justify-content-between mt-4 mt-5">
		<h2 class="float-start">Partner Detail</h2>
		<div style="position: relative;">
			<a class="btn btn-info" style="width: 85; height: 38px;" href="/pnr/list"> List
				<div style="border: 19px solid transparent; border-right-color: #0dcaf0; position: absolute; top: 0%; right: 96%"></div>
			</a>
		</div>
	</div>

	<div class="row">
		<div class="col">
			<div class="form-floating mb-3 mt-3">
				<input type="text" class="form-control" id="pnr_name" value="${pvo.pnr_name }" name="pnr_name" readonly>
				<label>Partner</label>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col">
			<div class="form-floating mb-3 mt-3">
				<input type="text" class="form-control" id="addr" value="${pvo.addr }" name="addr" readonly> 
				<label>Address.</label>
			</div>
		</div>
		<div class="col">
			<div class="form-floating mb-3 mt-3">
				<input type="text" class="form-control" id="pnr_tel" value="${pvo.pnr_tel }" name="pnr_tel" readonly>
				<label>Partner Tel.</label>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col">
			<div class="form-floating mb-3 mt-3">
				<input type="text" class="form-control" id="c_mgr" value="${pvo.c_mgr }" name="c_mgr" readonly> 
				<label>Partner MGR</label>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col">
			<div class="form-floating mb-3 mt-3">
				<input type="text" class="form-control" id="sales_mgr" value="${pvo.name }" name="sales_mgr" readonly>
				<label>Sales MGR</label>
			</div>
		</div>
		<div class="col">
			<div class="form-floating mb-3 mt-3">
				<input type="text" class="form-control" id="pnr_name" value="${pvo.reg_at }" name="pnr_name" readonly> 
				<label>Register Date</label>
			</div>
		</div>
		<div class="col">
			<div class="form-floating mb-3 mt-3">
				<input type="text" class="form-control" id="pnr_name" value="${pvo.writer }" name="pnr_name" readonly> 
				<label>Registrant</label>
			</div>
		</div>
	</div>

		<form class="row mt-5">
			<input type="text" value="${pvo.pid }" name="pid" hidden>
			<div class="col"><button class="btn btn-outline-warning col-12" formaction="/pnr/mod">Modify</button></div>
			<div class="col"><button class="btn btn-outline-danger col-12" formaction="/invt/remove">Remove</button></div>
		</form>
	
</div>

<jsp:include page="../footer.jsp" />