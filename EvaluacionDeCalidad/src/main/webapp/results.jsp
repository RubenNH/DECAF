<%@ page import="Decaf.Model.Bean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="Templates/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="Templates/css/main.css">
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark b" id="navbar" style="background-color:  blueviolet;">
    <div class="container-fluid">
        <h6 style=" color: aliceblue; font-family: 'Karla', sans-serif; ">SEDAC</h6>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="get-all">Estadisticas</a></li>
            </ul>
        </div>
    </div>
</nav>
<br>

<div class="row">
    <div class="col-12">
        <c:if test="${param['result']}">
            <p><c:out value="${param['message']}"></c:out></p>
        </c:if>
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-6">MEREQUETENGUE</div>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-sm table-hover datatable">
                    <thead>
                    <th>GRACIAS POR CONTESTAR, TU RESULTADO ES:</th>
                    </thead>
                    <tbody>
                    <% Bean msg = (Bean) session.getAttribute("porcentaje"); %>
                        <tr>
                            <td><c:out value="${porcentaje.porcentaje}%"></c:out></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script src="Templates/js/popper.min.js"></script>
<script src="Templates/js/bootstrap.min.js"></script>
</body>
</html>