<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp"/>

<div class="container mt-3">
  <h2>Removed Items</h2>

  <div class="list-group mt-4">
    <c:forEach var="ivo" items="${iList }">
      <a href="/invt/detail?iid=${ivo.iid }" class="text-decoration-none mt-1">
        <div class="list-group list-group-horizontal" style="position: relative">
          <div class="form-floating col-3">
            <div type="text" class="form-control">${ivo.serial }</div>
            <label>Serial Number</label>
          </div>

          <div class="form-floating col-2">
            <div type="text" class="form-control">${ivo.naming }</div>
            <label>Naming</label>
          </div>

          <form class="form-floating col-2" action="/pnr/detail">
          <input value="${ivo.pid }" name="pid" hidden>
            <button class="list-group-item btn btn-outline-light text-start form-control">${ivo.pnr_name }</button>
            <label>Partner</label>
          </form>

          <div class="form-floating col-5" style="width: 35%;">
            <div class="form-control">${ivo.addr }</div>
            <label>Location</label>
          </div>
  
          <div style="position: absolute; right: 0; top: 50%; transform: translate(0, -50%);">
          <form>
            <input type="text" value="${ivo.iid }" name="iid" hidden>
            <input type="text" value="${ivo.classifi }" name="classifi" hidden>
            <input type="text" value="${ivo.vendor }" name="vendor" hidden>
            <button type="submit" formaction="/invt/mod" class="btn btn-outline-warning" style="width: 40px;"><i class="bi bi-pencil-fill"></i></button>
            <button type="submit" formaction="/invt/remove" class="btn btn-outline-danger" style="width: 40px;"><i class="bi bi-trash3"></i></button>
          </form>
          </div>
        </div>
      </a>
    </c:forEach>
  </div>
  
</div>

<jsp:include page="../footer.jsp"/>