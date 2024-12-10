<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Indian Cultural Management System</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            height: 100vh;
            overflow: hidden;
        }

        header {
            position: relative;
            height: 100vh;
            width: 100%;
        }

        .video {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            z-index: 1;
            overflow: hidden;
        }

        #background-video {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .login-container {
            position: absolute;
            top: 50%; /* Center vertically */
            left: 50%;
            transform: translate(-50%, -50%); /* Center horizontally */
            z-index: 2;
        }

        .login-box {
            background: rgba(255, 255, 255, 0.6); /* Semi-transparent background */
            padding: 40px 60px; /* Increased padding */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 400px; /* Increased width */
            height: auto; /* Increased height */
        }

        .login-title {
            font-size: 24px; /* Increased font size */
            font-weight: bold;
            margin-bottom: 20px; /* Spacing below the title */
        }

        .textbox {
            margin-bottom: 20px;
        }

        .textbox input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
        }

        .textbox input:focus {
            border-color: #138808;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: #666; /* Light black/grey color */
            color: white;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #555; /* Darker grey on hover */
        }

        .signup-link {
            color: #333;
            margin-top: 10px;
        }

        .signup-link a {
            color: #138808;
            text-decoration: none;
            font-weight: bold;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <header>
        <div class="video">
            <video id="background-video" autoplay loop muted>
                <source src="videos/v1.mp4" type="video/mp4">
            </video>
        </div>
    </header>

    <div class="login-container">
        <div class="login-box">
            <div class="login-title">Login</div> <!-- Title added here -->
            <form id="login-form" method="POST">
                <div class="textbox">
                    <input type="text" id="username" placeholder="Username" name="username" required>
                </div>
                <div class="textbox">
                    <input type="password" id="password" placeholder="Password" name="password" required>
                </div>
                <button type="button" class="btn" onclick="signin()">Login</button>
                <p class="signup-link">Don't have an account? <a href="/signup">Sign Up</a></p>
            </form>
        </div>
    </div>

    <script type="text/javascript">
        function signin() {
            // Get the values from the input fields
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            // Prepare the data to be sent
            const data = JSON.stringify({
                username: username,
                password: password
            });

            // Send the login request
            fetch('http://localhost:8080/admin/login', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: data
            })
            .then(response => {
                if (response.status === 200) {
                    window.location.assign("/admindashboard");
                } else if (response.status === 401) {
                    alert("Invalid credentials. Please try again.");
                } else {
                    alert("An error occurred. Please try again later.");
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert("An error occurred. Please try again later.");
            });
        }
    </script>
</body>
</html>
