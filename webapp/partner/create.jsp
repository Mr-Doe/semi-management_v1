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
          <input type="text" class="form-control" id="pnr_name" placeholder="고객사 명"  name="pnr_name"> 
          <label style="font-size:12px;">회사명</label>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-6">
        <div class="form-floating mb-3 mt-3">
          <input type="text" class="form-control" id="addr" placeholder="고객사 주소" name="addr"> 
          <label style="font-size:12px;">주소</label>
        </div>
      </div>
      <div class="col">
        <div class="form-floating mb-3 mt-3">
          <input type="number" maxlength="3" class="form-control" placeholder="02" name="pnr_tel1"> 
          <label style="font-size:12px;">국번</label>
        </div>
      </div>
      <div class="col">
        <div class="form-floating mb-3 mt-3">
          <input type="number" maxlength="4" class="form-control" placeholder="지역번호" name="pnr_tel2"> 
          <label style="font-size:12px;">지역번호</label>
        </div>
      </div>
      <div class="col">
        <div class="form-floating mb-3 mt-3">
          <input type="number" maxlength="4" class="form-control" placeholder="마지막번호" name="pnr_tel3"> 
          <label style="font-size:12px;">전화번호 뒷자리</label>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-6">
        <div class="form-floating mb-3 mt-3">
          <input type="text" class="form-control" id="c_mgr" placeholder="고객사 담당자 이름"  name="c_mgr"> 
          <label style="font-size:12px;">고객사 담당자</label>
        </div>
      </div>
      <div class="col">
        <div class="form-floating mb-3 mt-3">
          <input type="number" maxlength="3" class="form-control" placeholder="010" name="c_tel1"> 
          <label style="font-size:12px;">휴대폰 번호 앞자리</label>
        </div>
      </div>
      <div class="col">
        <div class="form-floating mb-3 mt-3">
          <input type="number" maxlength="4" class="form-control" placeholder="중간번호" name="c_tel2"> 
          <label style="font-size:12px;">휴대폰 번호 중간자리</label>
        </div>
      </div>
      <div class="col">
        <div class="form-floating mb-3 mt-3">
          <input type="number" maxlength="4" class="form-control" placeholder="마지막번호" name="c_tel3"> 
          <label style="font-size:12px;">휴대폰 번호 뒷자리</label>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col">
        <div class="form-floating mb-3 mt-3">
          <input type="text" class="form-control" id="name" placeholder="영업 담당자" name="name">
          <label style="font-size:12px;">담당 관리자</label>
          <div class="search" style="position:relative">
            <div class="list-group pop_keywords col-12" style="position:absolute;z-index:1;border: 1px solid #dee2e6;border-top:0px;"></div>
            <input type="text" id="uid" value="" name="sales_mgr" hidden>
            <input type="text" class="form-control" id="writer" value="" name="writer" hidden> 
          </div>
        </div>
      </div>
    </div>

    <div class="row mt-5">
      <button class="btn btn-success col-12" formaction="/pnr/create">Register</button>
    </div>
  </form>

</div>

<script src="/resources/js/partner.create.js"></script>

<jsp:include page="../footer.jsp" />