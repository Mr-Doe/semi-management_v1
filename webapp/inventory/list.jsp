<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../header.jsp"/>
<jsp:include page="/modal/delete.reason.jsp"/>

<div class="container mt-3">
	<h2>${iList[0].k_name } 목록</h2>
  
	<div class="d-flex justify-content-between mt-4 mt-5">
		<div class="btn-group btn-group-mg">
			<a class="vendor-list btn btn-primary">Apple</a>
			<a class="vendor-list btn btn-outline-primary">Samsung</a>
			<a class="vendor-list btn btn-outline-primary">LG</a>
		</div>
			<a type="submit" class="btn btn-success" style="width: 85px" href="/inventory/create.jsp">New</a>
	</div>

	<div class="list-group mt-4">
		<c:forEach var="ivo" items="${iList }">
		<div class="row" style="position: relative;">
			<a href="/invt/detail?iid=${ivo.iid }" class="text-decoration-none mt-1" >
				<div class="list-group list-group-horizontal">
					<div class="form-floating col-3">
						<div type="text" class="form-control">${ivo.serial }</div>
						<label>재고 번호</label>
					</div>

					<div class="form-floating col-2">
						<div type="text" class="form-control">${ivo.naming }</div>
						<label>약칭</label>
					</div>

          <form class="form-floating col-2" action="/pnr/detail">
          <input value="${ivo.pid }" name="pid" hidden>
						<button class="list-group-item btn btn-outline-light text-start form-control">${ivo.pnr_name }</button>
						<label>고객사</label>
          </form>

					<div class="form-floating col-5" style="width: 35%;">
						<div class="form-control">${ivo.addr }</div>
						<label>현 재고 위치</label>
					</div>
				</div>
			</a>
			<div style="position: absolute; left: 91.8%; top: 50%; transform: translate(0, -50%);">
        <form>
          <input type="text" value="${ivo.iid }" name="iid" hidden>
          <input type="text" value="${ivo.classifi }" name="classifi" hidden>
          <input type="text" value="${ivo.vendor }" name="vendor" hidden>
          <button type="submit" formaction="/invt/mod" class="btn btn-outline-warning" style="width: 40px;"><i class="bi bi-pencil-fill"></i></button>
          <button type="button" class="btn btn-outline-danger" style="width: 40px;" onclick="show_modal_window('${ivo.iid }', '${ivo.classifi }', ${ivo.vendor }', '/invt/remove')"><i class="bi bi-trash3"></i></button>
        </form>
      </div>
    </div>
    </c:forEach>
  </div>
	
</div>

<script>
const classification = '<c:out value="${iList[0].classifi}" />';
const supplier = '<c:out value="${iList[0].vendor}"/>';
</script>
<script src="/resources/js/inventory.list.js"></script>
<script>
makeInventoryListButton(classification);
</script>

<jsp:include page="../footer.jsp" />