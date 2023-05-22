<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="author" content="Mateo Suarez">
    <meta name="description" content="Regitro de usuario y logeo de usuario">
    <meta name="keywords" content="registro de usuario, formulario de registro, crear cuenta, registro en linea">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LOGEO DE USUARIO : MY APP</title>
    <link rel="icon" type="image/x-icon" href="img/barateon.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icon@1.10.3/font/bootstrap-icons.css">
    <link rel="stylesheet" href="css/signin.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body class="text-center">
<div class="container">

    <header>
    </header>
    <nav>
    </nav>

    <!--register form-->
    <section>
        <main class="form-signin w-100 m-auto">
            <form action="registerProduct" method="POST">
                <img src="img/barateon.png" class="mb-4" alt="MY APP" width="100">
                <h4 class="text-secondary">MY -APP</h4>
                <h1 class="h5 mb-3 fw-normal">Ingreso</h1>

                <div class="form-floating">
                    <input name="product_name" type="text" class="form-control" id="floatingInput" placeholder="Ingresa nombre de producto" autofocus required pattern="{A-Z a-z}{8,12}"><br>
                    <label for="floatingInput">Nombre:</label>
                </div>

                <div class="form-floating">
                    <input name="product_value" type="text" class="form-control" id="floatingLastname" placeholder="Ingresa valor de producto" required pattern="{A-Z a-z}{8,12}"><br>
                    <label for="floatingLastname">Valor:</label>
                </div>

                <div class="form-floating">
                    <input name="category_id" type="text" class="form-control" id="floatingCate_id" placeholder="Ingresa la categoria del producto" required pattern="{A-Z a-z}{8,12}"><br>
                    <label for="floatingCate_id">Categoria:</label>
                </div>

                <button class="w-100 btn btn-lg btn-primary" type="submit">Registrar</button>
                <div id="register">
                    <a href="index.jsp">Volver a login</a>

                </div>

            </form>
        </main>
    </section>
    <footer>
        <p class="mt-3 mb-3 text-muted">TODOS LOS DERECHOS RESERVADOS A MY APP
            <%=displayDate()%>
        </p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</div>

<%!public String displayDate(){
    SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
    Date date = Calendar.getInstance().getTime();
    return dateFormat.format(date);
}
%>
</body>
</html>
