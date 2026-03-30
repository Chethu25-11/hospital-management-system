<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Patient Registration</title>

<style>
body {
    font-family: Arial;
    background: linear-gradient(to right, #74ebd5, #ACB6E5);
}

.container {
    width: 400px;
    margin: 50px auto;
    background: white;
    padding: 25px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px gray;
}

h2 {
    text-align: center;
}

input, select, textarea {
    width: 100%;
    padding: 8px;
    margin: 8px 0;
}

button {
    width: 100%;
    padding: 10px;
    background: #28a745;
    color: white;
    border: none;
    cursor: pointer;
}

button:hover {
    background: #218838;
}

.error {
    color: red;
    font-size: 12px;
}
</style>
</head>

<body>

<div class="container">
    <h2>Patient Registration</h2>

    <form action="/hospital-management/patient/register" method="post">

        <input type="text" name="name" placeholder="Enter Name" required />

        <input type="number" name="phoneNumber" placeholder="Enter Phone Number" required />

        <input type="email" name="email" placeholder="Enter Email" required />

        <select name="gender" required>
            <option value="">Select Gender</option>
            <option>Male</option>
            <option>Female</option>
            <option>Other</option>
        </select>

        <input type="date" name="dob" required />

        <select name="bloodType" required>
            <option value="">Select Blood Group</option>
            <option>A+</option>
            <option>B+</option>
            <option>O+</option>
            <option>AB+</option>
            <option>A-</option>
            <option>B-</option>
            <option>O-</option>
        </select>

        <textarea name="address" placeholder="Enter Address" required></textarea>

        <button type="submit">Register</button>

    </form>

    <c:if test="${not empty message}">
        <p style="color:green">${message}</p>
    </c:if>

</div>

</body>
</html>