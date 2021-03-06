<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="../header.jsp" />

<div class="container mt-3">
	<div class="d-flex justify-content-between mt-4 mt-5">
		<h2 class="float-start">Product Detail</h2>
	</div>

	<form>
		<div class="row">
			<div class="col">
				<div class="form-floating mb-3 mt-3">
					<input type="text" class="form-control" id="pnr_name" value="${pvo.pnr_name }" name="pnr_name"> 
					<label>Partner</label>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-6">
				<div class="form-floating mb-3 mt-3">
					<input type="text" class="form-control" id="addr" value="${pvo.addr }" name="addr"> 
					<label>Address.</label>
				</div>
			</div>

			<c:set var="tel_num" value="${fn:split(pvo.pnr_tel,'-') }" />
			<div class="col">
				<div class="form-floating mb-3 mt-3">
					<input type="number" maxlength="3" class="form-control" value="${tel_num[0]}" name="pnr_tel1"> 
					<label>City.</label>
				</div>
			</div>
			<div class="col">
				<div class="form-floating mb-3 mt-3">
					<input type="number" maxlength="4" class="form-control" value="${tel_num[1]}" name="pnr_tel2"> 
					<label>Region.</label>
				</div>
			</div>
			<div class="col">
				<div class="form-floating mb-3 mt-3">
					<input type="number" maxlength="4" class="form-control" value="${tel_num[2]}" name="pnr_tel3"> 
					<label>Tel.</label>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col">
				<div class="form-floating mb-3 mt-3">
					<input type="text" class="form-control" id="c_mgr" value="${pvo.c_mgr }" name="c_mgr"> 
					<label>Partner MGR</label>
				</div>
			</div>
			<div class="col">
				<div class="form-floating mb-3 mt-3">
					<input type="text" class="form-control" id="c_mgr" value=${pvo.name }"  name="c_mgr"> 
          <label style="font-size:12px;">고객사 담당자</label>
        </div>
      </div>
      <c:set var="c_num" value="${fn:split(pvo.c_tel,'-') }" />
      <div class="col">
        <div class="form-floating mb-3 mt-3">
          <input type="number" maxlength="3" class="form-control" value="${c_num[0] }" name="c_tel1"> 
          <label style="font-size:12px;">휴대폰 번호 앞자리</label>
        </div>
      </div>
      <div class="col">
        <div class="form-floating mb-3 mt-3">
          <input type="number" maxlength="4" class="form-control" value="${c_num[1] }" name="c_tel2"> 
          <label style="font-size:12px;">휴대폰 번호 중간자리</label>
        </div>
      </div>
      <div class="col">
        <div class="form-floating mb-3 mt-3">
          <input type="number" maxlength="4" class="form-control" value="${c_num[2] }" name="c_tel3"> 
          <label style="font-size:12px;">휴대폰 번호 뒷자리</label>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col">
				<div class="form-floating mb-3 mt-3">
					<input type="text" class="form-control" id="name" value="${pvo.name }" name="name">
					<label>Sales MGR</label>
					<div class="search" style="position:relative">
            <div class="list-group pop_keywords col-12" style="position:absolute;z-index:1;border: 1px solid #dee2e6;border-top:0px;"></div>
            <input type="text" id="uid" value="${pvo.sales_mgr }" name="sales_mgr" hidden>
          </div>
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
					<input type="text" class="form-control" id="writer" value="${pvo.writer }" name="writer" readonly> 
					<label>Registrant</label>
				</div>
			</div>
		</div>

		<div class="row mt-5">
		  <input type="text" id="pid" value="${pvo.pid }" name="pid" hidden>
			<button class="btn btn-outline-warning col-12" formaction="/pnr/modify">Modify</button>
		</div>
	</form>

</div>

<script src="/resources/js/partner.modify.js"></script>

<jsp:include page="../footer.jsp" />