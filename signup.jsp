<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Indian Cultural Management System</title>
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

        .signup-container {
            position: absolute;
            top: 50%; /* Center vertically */
            left: 50%;
            transform: translate(-50%, -50%); /* Center horizontally */
            z-index: 2;
        }

        .signup-box {
            background: rgba(255, 255, 255, 0.6); /* Semi-transparent background */
            padding: 40px 60px; /* Increased padding */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 400px; /* Increased width */
            height: auto; /* Auto height */
        }

        .signup-title {
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

        .login-link {
            color: #333;
            margin-top: 10px;
        }

        .login-link a {
            color: #138808;
            text-decoration: none;
            font-weight: bold;
        }

        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <header>
        <div class="video">
            <video id="background-video" autoplay loop muted>
                <source src="videos/travel-video.mp4" type="video/mp4">
            </video>
        </div>
    </header>

    <div class="signup-container">
        <div class="signup-box">
              <form id="user-signup" onsubmit="return signUp(event);" autocomplete="off">
    <div class="textbox">
        <input id="edit-firstname" type="text" placeholder="First Name" required>
    </div>
    <div class="textbox">
        <input id="edit-lastname" type="text" placeholder="Last Name" required>
    </div>
    <div class="textbox">
        <input id="edit-email" type="email" placeholder="Email" required>
    </div>
    <div class="textbox">
        <input id="edit-mobile" type="text" placeholder="Mobile Number" required>
    </div>
    <div class="textbox">
        <input id="edit-username" type="text" placeholder="Username" required>
    </div>
    <div class="textbox">
        <input id="edit-password" type="password" placeholder="Password" required>
    </div>
    <button type="submit" class="btn">Sign Up</button>
</form>

        </div>
    </div>
    <script>
async function signUp(event) {
    event.preventDefault(); // Prevent default form submission

    const formData = {
        firstname: document.getElementById('edit-firstname').value,
        lastname: document.getElementById('edit-lastname').value,
        emailid: document.getElementById('edit-email').value,
        mobileno: document.getElementById('edit-mobile').value,
        username: document.getElementById('edit-username').value,
        password: document.getElementById('edit-password').value,
    };

    try {
        const response = await fetch('/admin/signup', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(formData) // Use formData instead of userData
        });

        const message = await response.text();
        
        if (response.ok) { // Check if the response is OK (status code in the range 200-299)
            alert('New user has been created. You can log in now.'); // Popup message
            document.getElementById('user-signup').reset(); // Reset the form fields
        } else {
            alert('Signup failed: ' + message); // Handle errors
        }
    } catch (error) {
        console.error('Error:', error);
        alert('An error occurred while signing up.');
    }
}
</script>
    
</body>
</html>
