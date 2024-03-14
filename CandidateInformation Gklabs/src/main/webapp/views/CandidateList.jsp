<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Candidate Records</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-4">
        <h1>View All Candidate Records</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Candidate Name</th>
                    <th>Candidate Email</th>
                    <th>Candidate Age</th>
                    <th>Candidate Date of Birth</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="details" items="${candidates}">
                    <tr>
                        <td>${details.name}</td>
                        <td>${details.email}</td>
                        <td>${details.age}</td>
                        <td>${details.dateOfBirth}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
