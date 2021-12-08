<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <title>Edit!</title>
</head>
<body>
<!----NAVBAR---->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Employees</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" data-bs-toggle="modal" data-bs-target="#exampleModal" href="#">Add Employee</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<!----NAVBAR END---->

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

<script>
    (function () {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }

                    form.classList.add('was-validated')
                }, false)
            })
    })()
</script>

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
-->
</body>
</html>