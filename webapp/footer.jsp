<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</div>
<div class="container p-5" style="border: 1px solid red; z-index: 10; position: relative;">
  <div class="col-6" style="border: 1px solid green; height: 10px; position: absolute; top: 0; left: 50%; transform: translate(-50%);">
  
  </div>
	<div class="dropup dropdown-menu-end">
		<span type="button" class="btn btn-outline-dark" data-bs-toggle="dropdown" style="float: right"><i class="bi bi-list"></i></span>
		<ul class="dropdown-menu">
			<li>
        <a class="dropdown-item" id="logging-info" href="#">
          <c:if test="${session ne null }">
            <a href="#" id="ts"> ${session.name }<br> ${session.grade_name }<br> ${session.last_at }</a><br>
            <a class="btn btn-success" href="/login/logout" style="float: right;">Log out</a>
          </c:if>
        </a>
      </li>
		</ul>
	</div>
</div>

<script src="/resources/js/footer.js"></script>
</body>
</html>