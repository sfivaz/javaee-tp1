<%@ page import="java.util.List" %>
<%@ page import="ch.hesge.programmation.models.Person" %><%--
  Created by IntelliJ IDEA.
  User: Fivaz
  Date: 03/04/2020
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="POST" action="<%= request.getContextPath() %>/people">
    <label for="firstName">Prénom :</label>
    <input type="text" id="firstName" name="firstName"/>
    <label for="lastName">Nom :</label>
    <input type="text" id="lastName" name="lastName">
    <input type="submit" value="Enregistrer">
</form>
<% List<Person> people = (List<Person>) request.getAttribute("people"); %>
<% if (people != null) { %>
<table>
    <thead>
    <tr>
        <th>Prénom :</th>
        <th>Nom :</th>
    </tr>
    </thead>
    <tbody>
    <% for (Person person : people) { %>
    <tr>
        <td><%= person.getFirstName() %>
        </td>
        <td><%= person.getLastName() %>
        </td>
        <% } %>
    </tr>
    </tbody>
</table>
<% } %>
</body>
</html>
