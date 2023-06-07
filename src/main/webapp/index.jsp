<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="head.jsp"%>
<body class="text-center">
<div class="container">

<header>
</header>
<nav>
</nav>

<!--login form-->
    <section>
<main class="form-signin w-100 m-auto">
    <form action="" method="post">
        <img src="img/barateon.png" class="mb-4" alt="MY APP" width="100">
        <h4 class="text-secondary">MY -APP</h4>
        <h1 class="h5 mb-3 fw-normal">Ingreso</h1>

    <div class="form-floating">
        <input type="text" class="form-control" id="floatingInput" placeholder="Ingresa tu nombre" autofocus required pattern="{A-Z a-z}{8,12}"><br>
        <label for="floatingInput">Usuario:</label>
    </div>

        <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" placeholder="Ingresa tu contraseña" required pattern="{A-Z a-z}{8,15}"><br>
            <label for="floatingPassword">Contraseña:</label>
        </div>

        <button class="w-100 btn btn-lg btn-primary" type="submit">Iniciar Seción</button>
        <div id="register">
            <a href="register.jsp">Registrate</a>
            <a href="register-category.jsp">Registrar categoria</a>
            <a href="Register-product.jsp">Registrar prodcuto</a>
        </div>

    </form>
</main>
    </section>
    
<%@include file="footer.jsp"%>