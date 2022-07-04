<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp"/>

<div class="container mt-3">
  <h2>Product Register</h2>
  
  <form action="/invt/create" method="post">
    <div class="row">
      <div class="col"><div class="form-floating mb-3 mt-3">
          <input type="text" class="form-control" id="email" placeholder="Serial Number" name="serial" required>
          <label for="email">Serial Number</label>
        </div>
      </div>
    </div>
    
    <div class="row">
      <div class="col" id="classifiList">
      </div>
      <div class="col" id="vendorList">
      </div>
    </div>
    
    <div class="row">
      <div class="col">
        <div class="form-floating mb-3 mt-3">
          <input type="text" class="form-control" id="model" placeholder="Product Model" name="model">
          <label for="model">Product Model</label>
        </div>
      </div>
      <div class="col">
        <div class="form-floating mb-3 mt-3">
          <input type="text" class="form-control" id="naming" placeholder="Naming" name="naming">
          <label for="naming">Naming</label>
        </div>
      </div>
    </div>
    
    <div class="row">
      <div class="col">
        <div class="form-floating mb-3 mt-3">
          <input type="text" class="form-control" id="pnr_name" placeholder="Customers" name="pnr_name" required>
          <label for="pnr_name">Customers</label>
          <div class="search" style="position:relative">
            <div class="list-group pop_keywords col-12" style="position:absolute;z-index:1;border: 1px solid #dee2e6;border-top:0px;">
            </div>
            <input type="text" id="pid" value="" name="pid" hidden>
          </div>
        </div>
      </div>
    </div>
    
  <div class="row">
    <div class="col">
      <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" id="writer" value="" name="writer" hidden>
      </div>
    </div>
  </div>
    
    <div class="row mt-5">
      <button type="submit" class="btn btn-success">Create</button>
    </div>
  </form>
</div>

<script src="/resources/js/inventory.create.js"></script>
<script>
makeClassifiList();
</script>
<jsp:include page="../footer.jsp"/>