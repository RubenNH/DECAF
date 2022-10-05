<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
            <h6 style=" color: aliceblue; font-family: 'Karla', sans-serif; ">SADEC</h6>
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
<form novalidate action="add-results" method="post" class="needs-validation">

    <div class="col-7 form-group mb-4 container-fluid  row">
        <div class="row">
            <div class="col">
                <label class="fw-bold" for="nombre">Nombre</label>
                <input name="name" id="nombre" required
                       class="form-control"/>
                <div class="invalid-feedback">
                    Campo obligatorio
                </div>
            </div>
            <div class="col">
                <label class="fw-bold" for="escuela">Escuela</label>
                <input name="escuela" id="escuela" required
                       class="form-control" type="text"/>
                <div class="invalid-feedback">
                    Campo obligatorio
                </div>
            </div>
        </div></div>

    <div class="container-fluid row">
        <div class="col-12">
            <div class="card">
                <div style="background-color: indigo ;" class="card-header">
                    <div class="row">
                        <div class="col-6" style="color: aliceblue;">Septiembre 2022</div>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table table-sm table-hover datatable">
                        <thead >
                        <th>Caracteristica</th>
                        <th>Mala</th>
                        <th>Regular</th>
                        <th>Buena</th>
                        <th>Muy buena</th>
                        <th>Excelente</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="col-4">Funcionalidad</td>
                                <td><input type="radio" class="btn-check" name="funcionalidad" id="f1" value="1" >
                                    <label class="btn btn-outline-danger funcionalidad" for="f1">Mala</label></td>
                                <td><input type="radio" class="btn-check" name="funcionalidad" id="f2" value="2">
                                    <label class="btn btn-outline-dark" for="f2">Regular</label></td>
                                <td><input type="radio" class="btn-check" name="funcionalidad" id="f3" value="3">
                                    <label class="btn btn-outline-warning" for="f3">Buena</label></td>
                                <td><input type="radio" class="btn-check" name="funcionalidad" id="f4" value="4">
                                    <label class="btn btn-outline-success" for="f4">Muy buena</label></td>
                                <td><input type="radio" class="btn-check" name="funcionalidad" id="f5" value="5">
                                    <label class="btn btn-outline-primary" for="f5">Excelente</label></td>
                            </tr>
                            <tr>
                                <td>Confiabilidad</td>
                                <td><input type="radio" class="btn-check" name="confiabilidad" id="c1" value="1">
                                    <label class="btn btn-outline-danger" for="c1">Mala</label></td>
                                <td><input type="radio" class="btn-check" name="confiabilidad" id="c2" value="2">
                                    <label class="btn btn-outline-dark" for="c2">Regular</label></td>
                                <td><input type="radio" class="btn-check" name="confiabilidad" id="c3" value="3">
                                    <label class="btn btn-outline-warning" for="c3">Buena</label></td>
                                <td><input type="radio" class="btn-check" name="confiabilidad" id="c4" value="4">
                                    <label class="btn btn-outline-success" for="c4">Muy buena</label></td>
                                <td><input type="radio" class="btn-check" name="confiabilidad" id="c5" value="5">
                                    <label class="btn btn-outline-primary" for="c5">Excelente</label></td>
                            </tr>
                            <tr>
                                <td>Usabilidad</td>
                                <td><input type="radio" class="btn-check" name="usabilidad" id="u1" value="1">
                                    <label class="btn btn-outline-danger" for="u1">Mala</label></td>
                                <td><input type="radio" class="btn-check" name="usabilidad" id="u2" value="2">
                                    <label class="btn btn-outline-dark" for="u2">Regular</label></td>
                                <td><input type="radio" class="btn-check" name="usabilidad" id="u3" value="3" checked>
                                    <label class="btn btn-outline-warning" for="u3">Buena</label></td>
                                <td><input type="radio" class="btn-check" name="usabilidad" id="u4" value="4">
                                    <label class="btn btn-outline-success" for="u4">Muy buena</label></td>
                                <td><input type="radio" class="btn-check" name="usabilidad" id="u5" value="5">
                                    <label class="btn btn-outline-primary" for="u5">Excelente</label></td>
                            </tr>
                            <tr>
                                <td >Rendimiento</td>
                                <td><input type="radio" class="btn-check" name="rendimiento" id="r1" value="1">
                                    <label class="btn btn-outline-danger" for="r1">Mala</label></td>
                                <td><input type="radio" class="btn-check" name="rendimiento" id="r2" value="2">
                                    <label class="btn btn-outline-dark" for="r2">Regular</label></td>
                                <td><input type="radio" class="btn-check" name="rendimiento" id="r3" value="3" checked>
                                    <label class="btn btn-outline-warning" for="r3">Buena</label></td>
                                <td><input type="radio" class="btn-check" name="rendimiento" id="r4" value="4">
                                    <label class="btn btn-outline-success" for="r4">Muy buena</label></td>
                                <td><input type="radio" class="btn-check" name="rendimiento" id="r5" value="5">
                                    <label class="btn btn-outline-primary" for="r5">Excelente</label></td>
                            </tr>
                            <tr>
                                <td>Mantenimiento</td>
                                <td><input type="radio" class="btn-check" name="mantenimiento" id="m1" value="1">
                                    <label class="btn btn-outline-danger" for="m1">Mala</label></td>
                                <td><input type="radio" class="btn-check" name="mantenimiento" id="m2" value="2">
                                    <label class="btn btn-outline-dark"   for="m2">Regular</label></td>
                                <td><input type="radio" class="btn-check" name="mantenimiento" id="m3" value="3">
                                    <label class="btn btn-outline-warning" for="m3">Buena</label></td>
                                <td><input type="radio" class="btn-check" name="mantenimiento" id="m4" value="4">
                                    <label class="btn btn-outline-success" for="m4">Muy buena</label></td>
                                <td><input type="radio" class="btn-check" name="mantenimiento" id="m5" value="5">
                                    <label class="btn btn-outline-primary" for="m5">Excelente</label></td>
                            </tr>
                            <tr>
                                <td>Portabilidad</td>
                                <td><input type="radio" class="btn-check" name="portabilidad" id="p1" value="1">
                                    <label class="btn btn-outline-danger" for="p1">Mala</label></td>
                                <td><input type="radio" class="btn-check" name="portabilidad" id="p2" value="2">
                                    <label class="btn btn-outline-dark" for="p2">Regular</label></td>
                                <td><input type="radio" class="btn-check" name="portabilidad" id="p3" value="3">
                                    <label class="btn btn-outline-warning" for="p3">Buena</label></td>
                                <td><input type="radio" class="btn-check" name="portabilidad" id="p4" value="4">
                                    <label class="btn btn-outline-success" for="p4">Muy buena</label></td>
                                <td><input type="radio" class="btn-check" name="portabilidad" id="p5" value="5">
                                    <label class="btn btn-outline-primary" for="p5">Excelente</label></td>
                            </tr>
                            <tr>
                                <td>Seguridad</td>
                                <td><input type="radio" class="btn-check" name="seguridad" id="s1" value="1">
                                    <label class="btn btn-outline-danger" for="s1">Mala</label></td>
                                <td><input type="radio" class="btn-check" name="seguridad" id="s2" value="2">
                                    <label class="btn btn-outline-dark" for="s2">Regular</label></td>
                                <td><input type="radio" class="btn-check" name="seguridad" id="s3" value="3">
                                    <label class="btn btn-outline-warning" for="s3">Buena</label></td>
                                <td><input type="radio" class="btn-check" name="seguridad" id="s4" value="4">
                                    <label class="btn btn-outline-success" for="s4">Muy buena</label></td>
                                <td><input type="radio" class="btn-check" name="seguridad" id="s5" value="5">
                                    <label class="btn btn-outline-primary" for="s5">Excelente</label></td>
                            </tr>
                            <tr>
                                <td>Compatibilidad</td>
                                <td><input type="radio" class="btn-check" name="compatibilidad" id="co1" value="1">
                                    <label class="btn btn-outline-danger" for="co1">Mala</label></td>
                                <td><input type="radio" class="btn-check" name="compatibilidad" id="co2" value="2">
                                    <label class="btn btn-outline-dark" for="co2">Regular</label></td>
                                <td><input type="radio" class="btn-check" name="compatibilidad" id="co3" value="3">
                                    <label class="btn btn-outline-warning" for="co3">Buena</label></td>
                                <td><input type="radio" class="btn-check" name="compatibilidad" id="co4" value="4">
                                    <label class="btn btn-outline-success" for="co4">Muy buena</label></td>
                                <td><input type="radio" class="btn-check" name="compatibilidad" id="co5" value="5">
                                    <label class="btn btn-outline-primary" for="co5">Excelente</label></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <button type="submit" class="btn btn-primary btn-sm col-3">Finalizar</button>
                </div> <br><br><br>
            </div>
        </div>
    </div>

</form>


    <script src="Templates/js/popper.min.js"></script>
    <script src="Templates/js/bootstrap.min.js"></script>
</body>
</html>
