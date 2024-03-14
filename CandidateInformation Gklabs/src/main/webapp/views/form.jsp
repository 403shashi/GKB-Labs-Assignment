<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Candidate Information</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script>
        function isValidEmail(email) {
            return /^[\w.-]+@[\w.-]+\.[a-zA-Z]{2,}$/.test(email);
        }

        function validateForm() {
            var name = document.getElementById("name").value;
            var email = document.getElementById("email").value;
            var age = document.getElementById("age").value;
            var dateOfBirth = document.getElementById("dateOfBirth").value;
            var valid = true;

            document.getElementById('nameError').innerHTML = "";
            document.getElementById('emailError').innerHTML = "";
            document.getElementById('ageError').innerHTML = "";
            document.getElementById('dateOfBirthError').innerHTML = "";

            if (name.trim() === "") {
                document.getElementById('nameError').innerHTML = "Name is required";
                valid = false;
            }

            if (email.trim() === "") {
                document.getElementById('emailError').innerHTML = "Email is required";
                valid = false;
            } else if (!isValidEmail(email)) {
                document.getElementById('emailError').innerHTML = "Enter a valid email";
                valid = false;
            }

            if (age.trim() === "") {
                document.getElementById('ageError').innerHTML = "Age is required";
                valid = false;
            } else if (age <= 0) {
                document.getElementById('ageError').innerHTML = "Enter a valid age";
                valid = false;
            }

            if (dateOfBirth.trim() === "") {
                document.getElementById('dateOfBirthError').innerHTML = "Date of Birth is required";
                valid = false;
            }

            return valid;
        }
    </script>
</head>
<body>
    
    <div class="container mt-5 text-center">

        <h2 class="text-center font-italic mb-5">Candidate Information</h2>

        <form action="/register">
        
            <div class="form-group">
                <label class="font-italic font-weight-bold">Name:</label>
                <input type="text" class="form-control-sm" id="name" name="name" required>
                <span id="nameError" class="text-danger"></span>
            </div>

            <div class="form-group">
                <label class="font-italic font-weight-bold">Email:</label>
                <input type="email" class="form-control-sm" id="email" name="email" required>
                <span id="emailError" class="text-danger"></span>
            </div>

            <div class="form-group">
                <label class="font-italic font-weight-bold">Age:</label>
                <input type="number" class="form-control-sm" id="age" name="age" required>
                <span id="ageError" class="text-danger"></span>
            </div>

            <div class="form-group">
                <label class="font-italic font-weight-bold">Date of Birth:</label>
                <input type="date" class="form-control-sm" id="dateOfBirth" name="dateOfBirth" required>
                <span id="dateOfBirthError" class="text-danger"></span>
            </div>

            <button type="submit" onclick="validateForm()" class="btn btn-success">Add Candidate Information</button>

        </form>
    </div>
</body>
</html>
