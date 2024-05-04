<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Barangay Biclatan Information System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/index1.css" type="text/css">
    <script src="https://kit.fontawesome.com/67a9b7069e.js" crossorigin="anonymous"></script>
    <script src="customjs/main.js" type="text/javascript"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <style>
        /* Your existing styles */
    </style>
    <style>
        /* Additional styles for responsiveness */
        @media (max-width: 768px) {
            .logo-container {
                display: none; /* Hide the logo container */
            }
            .form-container {
                max-width: 100%;
            }
            .eye-icon {
                left: calc(100% - 30px);
            }
        }
    </style>
</head>
<body>
<section class="main-section">
    <div class="container">
        <div class="row">
            <!-- Adjusted the order of columns for responsiveness -->
            <div class="col-md-6 order-md-last logo-container">
                <img src="assets/goloo.png" alt="Logo" class="logo">
            </div>
            <div class="col-md-6 form-container">
                <div class="card main-card mt-3">
                    <div class="card-body">
                        <form method="post" class="input-container">
                            <div class="mb-3">
                                <center><p class="title-text">Barangay Biclatan Information System</p></center>
                                <label for="email" class="form-label"><b>Email:</b></label>
                                <div class="input-container">
                                    <i class="fa fa-envelope icon"></i>
                                    <input class="input-field" type="email" id="email" placeholder="Enter Email" name="email" required>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="password" class="form-label"><b>Password:</b></label>
                                <div class="input-container">
                                    <i class="fa fa-key icon"></i>
                                    <input class="input-field" type="password" id="password" placeholder="Enter Password" name="password" required>
                                    <i class="fa fa-eye-slash eye-icon" onclick="togglePasswordVisibility()"></i>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="g-recaptcha" data-sitekey="6LdM0DgUAAAAAHtPjQfbqTX6viYFbOvkcFs_twDp" style="transform:scale(0.8);transform-origin:0;-webkit-transform:scale(0.8);transform:scale(0.8);"></div>
                            </div>

                            <button class="btn btn-primary login-button" type="submit" name="login">Log-in</button>
                            <a href="index.php" class="btn btn-danger login-button" type="submit" name="login"  style="background-color: #0B5345; border: 2px solid #0B5345;">Back to homepage</a>
                        </form>

                        <hr>

                        <div class="registration-section">
                            <p1><strong>Haven't registered yet?</strong></p1><br>
                            <p1>Hindi ka pa rehistrado?</p1><br>
                            <button class="btn btn-success create-button" onclick="trying();">Create Account</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    function myFunction() {
        var x = document.getElementById("password");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }

    function trying() {
        window.location.href = "resident_registration.php";
    }
</script>

<script>
    function togglePasswordVisibility() {
        var passwordInput = document.getElementById("password");
        var eyeIcon = document.querySelector(".eye-icon");

        if (passwordInput.type === "password") {
            passwordInput.type = "text";
            eyeIcon.classList.remove("fa-eye-slash");
            eyeIcon.classList.add("fa-eye");
        } else {
            passwordInput.type = "password";
            eyeIcon.classList.remove("fa-eye");
            eyeIcon.classList.add("fa-eye-slash");
        }
    }
</script>

</body>
</html>
