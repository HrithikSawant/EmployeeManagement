<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form class=" needs-validation mx-3" action="../update" method="post" novalidate>
        <input type="hidden" value="${employeeDetail.id}" name="id">
        <div class="mb-2">
            <label for="validationCustom01" class="form-label">Name</label>
            <input type="text" class="form-control" id="validationCustom01" value="${employeeDetail.name}" name="name" minlength="3"  required>
            <div class="valid-feedback">
                Looks good!
            </div>
        </div>

        <div class="mb-4">
            <label for="validationCustom02" class="form-label">imageUrl</label>
            <input type="text" class="form-control" id="validationCustom02" value="${employeeDetail.imageUrl}" name="imageUrl"  required>
            <div class="valid-feedback">
                Looks good!
            </div>
        </div>

        <div class="mb-4">
            <label for="validationCustom03" class="form-label">JobTitle</label>
            <input type="text" class="form-control" id="validationCustom03" value="${employeeDetail.jobTitle}" name="jobTitle" minlength="3"  required>
            <div class="valid-feedback">
                Looks good!
            </div>
        </div>

        <div class="mb-4">
            <label for="validationCustom04" class="form-label">Email address</label>
            <input type="email" class="form-control" id="validationCustom04" value="${employeeDetail.email}" name="email" aria-describedby="emailHelp" required>
            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            <div class="valid-feedback">
                Looks good!
            </div>
        </div>

        <div class="mb-4">
            <label for="validationCustom05" class="form-label">Contact</label>
            <input type="tel" class="form-control" id="validationCustom05" value="${employeeDetail.phone}" name="phone" minlength="10" required>
            <div class="valid-feedback">
                Looks good!
            </div>
        </div>

        <div class="mb-4">
            <label for="validationCustom06" class="form-label">EmployeeCode</label>
            <input type="text" class="form-control" id="validationCustom06" value="${employeeDetail.employeeCode}" name="employeeCode" minlength="7" required>
            <div class="valid-feedback">
                Looks good!
            </div>
        </div>
        <div class="mb-4">
            <button type="submit" class="btn btn-primary">Add</button>
        </div>
</form>
</body>
</html>
