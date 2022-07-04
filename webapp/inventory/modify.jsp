<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp"/>

<div class="container mt-3">
  <h2>Product Modify</h2>
  
    <form action="/invt/modify" method="post">
    <div class="row">
      <div class="col">
          <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" id="serial" value="${ivo.serial }" name="serial">
        <label for="serial">Serial Number</label>
      </div>
      <input type="text" id="iid" value="${ivo.iid }" name="iid" hidden>
    </div>
  </div>
    
    <div class="row">
      <div class="col" id="classifiList">
        <div class="form-check"><input type="radio" class="form-check-input" name="classifi" value="100">노트북</div>
        <div class="form-check"><input type="radio" class="form-check-input" name="classifi" value="200" checked>서버</div>
      </div>
      <div class="col" id="vendorList">
        <div class="form-check"><input type="radio" class="form-check-input" name="vendor" value="110" checked>Apple</div>
          <div class="form-check"><input type="radio" class="form-check-input" name="vendor" value="120">Samsung</div>
          <div class="form-check"><input type="radio" class="form-check-input" name="vendor" value="130">LG</div>
      </div>
    </div>
    
    <div class="row">
      <div class="col">
      <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" id="model" value="${ivo.model }" name="model">
        <label for="model">Product Model</label>
      </div>
    </div>
    <div class="col">
          <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" id="naming" value="${ivo.naming }" name="naming">
        <label for="naming">Naming</label>
          </div>
    </div>
  </div>
    
  <div class="row">
    <div class="col">
      <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" id="pnr_name" value="${ivo.pnr_name }" name="pnr_name">
        <label for="pnr_name">Customers</label>
        <div class="search" style="position:relative">
          <div class="list-group pop_keywords col-12" style="position:absolute;z-index:1;border: 1px solid #dee2e6;border-top:0px;">
          </div>
          <input type="text" id="pid" value="${ivo.pid }" name="pid" hidden>
        </div>
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
      <button type="submit" class="btn btn-warning">Modify</button>
    </div>
  </form>
</div>

<script>
const classification = '<c:out value="${ivo.classifi}"/>';
const supplier = '<c:out value="${ivo.vendor}"/>';
</script>
<script src="/resources/js/inventory.modify.js"></script>
<script>
makeClassifiList(classification)
makeVendorList(classification)
</script>

<jsp:include page="../footer.jsp"/>