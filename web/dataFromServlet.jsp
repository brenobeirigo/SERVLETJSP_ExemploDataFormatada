<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo JSP</title>
    </head>
    <body>
        <jsp:useBean id="dataFromServlet" scope="request" class="model.DataFormatada" />
        <!-- Usando scriptlets:-->
        A data atual é <strong><%= dataFromServlet.getData()%> </strong><br>
        <!-- Usando Expression Language:-->
        A data atual é <strong>${dataFromServlet.data}</strong><br>
        <!-- Usando a action "jsp:getProperty"-->
        A data atual é <strong><jsp:getProperty name="dataFromServlet" property="data" /></strong><br>
    </body>
</html>
