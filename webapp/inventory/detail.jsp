<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp"/>

<div class="container mt-3">
  <div class="d-flex justify-content-between mt-4 mt-5">
    <h2 class="float-start">Product Detail</h2>
    <div style="position:relative;">
      <a class="btn btn-info" style="width:85; height:38px;" href="/invt/list?classifi=${ivo.classifi }&vendor=${ivo.vendor }">
      List
      <div style="border:19px solid transparent; border-right-color:#0dcaf0; position:absolute; top:0%; right:96%"></div>
      </a>
    </div>
  </div>
  
  <form>
    <div class="row">
      <div class="col">
          <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" id="serial" value="${ivo.serial }" name="serial" readonly>
        <label for="serial">Serial Number</label>
      </div>
    </div>
  </div>
    
    <div class="row">
      <div class="col">
        <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" id="e_name" value="${ivo.e_name }" name="e_name" readonly>
        <label for="e_name">Classification</label>
          </div>
      </div>
      <div class="col">
        <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" id="vendor_name" value="${ivo.vendor_name }" name="vendor_name" readonly>
        <label for="vendor_name">Vendor</label>
      </div>
    </div>
  </div>
    
    <div class="row">
      <div class="col">
      <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" id="model" value="${ivo.model }" name="model" readonly>
        <label for="model">Product Model</label>
      </div>
    </div>
    <div class="col">
          <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" id="naming" value="${ivo.naming }" name="naming" readonly>
        <label for="naming">Naming</label>
          </div>
    </div>
  </div>
    
  <div class="row">
    <div class="col">
      <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" id="pnr_name" value="${ivo.pnr_name }" name="pnr_name" readonly>
        <label for="pnr_name">Customers</label>
      </div>
    </div>
  </div>
  
  <div class="row">
      <div class="col">
      <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" id="reg_at" value="${ivo.reg_at }" name="reg_at" readonly>
        <label for="reg_at">Register Date</label>
      </div>
    </div>
    <div class="col">
          <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" id="writer" value="${ivo.writer }" name="writer" readonly>
        <label for="writer">Registant</label>
          </div>
    </div>
  </div>
    
  <div class="row mt-5">
    <div class="col">
      <a type="submit" class="btn btn-outline-warning col-12" href="/invt/mod?iid=${ivo.iid }">Modify</a>
    </div>
        <div class="col">
      <button type="submit" class="btn btn-outline-danger col-12">Remove</button>
    </div>
  </div>
  </form>
</div>

<jsp:include page="../footer.jsp"/>