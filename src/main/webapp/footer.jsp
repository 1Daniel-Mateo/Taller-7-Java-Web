<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 4/06/2023
  Time: 10:13 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

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
