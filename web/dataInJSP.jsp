<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo JSP</title>
    </head>
    <body>
        <jsp:useBean id="data" class="model.DataFormatada" />
        <!--Modificando valores-->
        <!--Usando scriptlets-->
        <% Calendar cal = Calendar.getInstance();
            cal.set(1995, 2, 3);
            data.setData(cal);%>
        <!--Usando a action jsp.setProperty-->
        <jsp:setProperty name="data" property="dateFormat" value="dd/MM/yyyy"/>
        <!--Capturando valores-->
        <!-- Usando scriptlets:-->
        A data atual é <strong><%= data.getData()%> </strong><br>
        <!-- Usando Expression Language:-->
        A data atual é <strong>${data.data}</strong><br>
        <!-- Usando a action "jsp:getProperty"-->
        A data atual é <strong><jsp:getProperty name="data" property="data" /></strong><br>
    </body>
</html>
