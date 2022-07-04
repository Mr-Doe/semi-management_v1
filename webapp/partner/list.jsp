<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp"/>

<div class="container mt-3">
  <h2>Partner List</h2>

  <div class="d-flex justify-content-between mt-4 mt-5">
    <div class="btn-group btn-group-mg">
    </div>
      <a type="submit" class="btn btn-success" style="width: 85px" href="/partner/create.jsp">New</a>
  </div>

  <div class="list-group mt-4">
    <c:forEach var="pvo" items="${pList }">
      <a href="/pnr/detail?pid=${pvo.pid }" class="text-decoration-none mt-1">
        <div class="list-group list-group-horizontal" style="position: relative">
          <div class="form-floating col-2">
            <div class="form-control">${pvo.pnr_name }</div>
            <label>Partner</label>
          </div>

          <div class="form-floating col-2">
            <div class="form-control">${pvo.pnr_tel }</div>
            <label>Tel.</label>
          </div>

          <div class="form-floating col-5">
            <div class="form-control">${pvo.addr }</div>
            <label>Location</label>
          </div>
          
          <div class="form-floating" style="width: 14.9%;">
            <div class="form-control">${pvo.name }</div>
            <label>Manager.</label>
          </div>
  
          <div style="position: absolute; right: 0; top: 50%; transform: translate(0, -50%);">
          <form>
            <input type="text" value="${pvo.pid }" name="pid" hidden>
            <button type="submit" formaction="/invt/pnr" class="btn btn-outline-info" style="width: 40px;"><i class="bi bi-list-ol"></i></button>
            <button type="submit" formaction="/pnr/mod" class="btn btn-outline-warning" style="width: 40px;"><i class="bi bi-pencil-fill"></i></button>
            <button type="submit" formaction="/pnr/remove" class="btn btn-outline-danger" style="width: 40px;"><i class="bi bi-trash3"></i></button>
          </form>
          </div>
        </div>
      </a>
    </c:forEach>
  </div>
  
</div>

<jsp:include page="../footer.jsp" />