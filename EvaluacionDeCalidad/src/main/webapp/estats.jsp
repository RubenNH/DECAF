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
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">Encuesta</a></li>
            </ul>
        </div>
    </div>
</nav>
<br>
<% Bean msg = (Bean) session.getAttribute("nEnc1"); %>
<% Bean msg1 = (Bean) session.getAttribute("estadisticas"); %>
<div class="container-fluid">
    <div class="card">
        <div style="background-color:  blueviolet;" class="card-header">
            <div class="row">
                <div class="col-6" style="color: aliceblue;">Encuesta <c:out value="${nEnc1}"></c:out></div>
            </div>
        </div>
        <div class="card-body">
            <table class="table table-sm table-hover datatable">
                <thead>
                <th>#</th>
                <th>Cliente</th>
                <th>Escuela</th>
                <th>Funcion</th>
                <th>confia</th>
                <th>Usabi</th>
                <th>Rendimi</th>
                <th>Manteni</th>
                <th>Portabi</th>
                <th>Seguridd</th>
                <th>Compati</th>
                <th>Porcentaje</th>
                </thead>
                <tbody>
                <c:forEach var="lik" items="${likes}" varStatus="status">
                    <tr>
                        <td><c:out value="${status.count}"></c:out></td>
                        <td><c:out value="${lik.user}"/></td>
                        <td><c:out value="${lik.school}"/></td>
                        <td><c:out value="${lik.funcionalidad}"/></td>
                        <td><c:out value="${lik.confiabilidad}"/></td>
                        <td><c:out value="${lik.usabilidad}"/></td>
                        <td><c:out value="${lik.rendimiento}"/></td>
                        <td><c:out value="${lik.mantenimiento}"/></td>
                        <td><c:out value="${lik.portabilidadmpT}"/></td>
                        <td><c:out value="${lik.seguridad}"/></td>
                        <td><c:out value="${lik.compatibilidad}"/></td>
                        <td><c:out value="${lik.porcentaje}"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div> <br><br>
<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <table class="table table-sm table-hover datatable">
                <thead>
                <th>#</th>
                <th>Datos</th>
                <th>Valor</th>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Cantidad</td>
                        <td><c:out value="${estadisticas.count}"></c:out></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Porcentaje</td>
                        <td><c:out value="${estadisticas.genPorc}%"></c:out></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div><br><br>

<script src="Templates/js/popper.min.js"></script>
<script src="Templates/js/bootstrap.min.js"></script>
</body>
</html>