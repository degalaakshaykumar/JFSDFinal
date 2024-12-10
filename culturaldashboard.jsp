<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cultural Enthusiast Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fdf5e6;
        }
        .navbar {
            background-color: #ff9800;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            color: white;
        }
        .navbar h1 {
            margin: 0;
            font-size: 24px;
            font-weight: bold;
        }
        .navbar .nav-links {
            display: flex;
            gap: 20px;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            padding: 5px 10px;
            border-radius: 5px;
        }
        .navbar a:hover {
            background-color: #e64a19;
        }
        .container {
            padding: 20px;
        }
        .card {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            margin: 15px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 30%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .card img {
            width: 100%;
            height: 200px; /* Adjust the height to match the container */
            object-fit: cover; /* Ensures the image fills the box */
            border-radius: 8px;
            margin-bottom: 15px;
        }
        .card-title {
            font-size: 20px;
            color: #ff5722;
            margin-bottom: 15px;
        }
        .card button {
            padding: 10px 20px;
            background-color: #ff5722;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .card button:hover {
            background-color: #e64a19;
        }
        .dashboard-grid {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        .footer {
            background-color: #ff9800;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: 20px;
        }
        .signout-btn {
            background-color: white;
            color: #ff9800;
            border: 1px solid white;
            border-radius: 5px;
            padding: 5px 10px;
            cursor: pointer;
            font-size: 16px;
        }
        .signout-btn:hover {
            background-color: #e64a19;
            color: white;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>Cultural Enthusiast Dashboard</h1>
        <div class="nav-links">
            <a href="explore.jsp">Explore Culture</a>
            <a href="events.jsp">Cultural Events</a>
            <a href="resources.jsp">Cultural Resources</a>
        </div>
        <button class="signout-btn" onclick="logout()">Sign Out</button>
    </div>
    <div class="container">
        <div class="dashboard-grid">
            <div class="card">
                <img src="images/exploreculture.jpg" alt="Explore Culture">
                <div class="card-title">Explore Culture</div>
                <button onclick="exploreculture()">Go</button>
            </div>
            <div class="card">
                <img src="images/culturalevents.jpg" alt="Cultural Events">
                <div class="card-title">Cultural Events</div>
                <button onclick="culturalevents()">Go</button>
            </div>
            <div class="card">
                <img src="images/culturalresources.jpeg" alt="Cultural Resources">
                <div class="card-title">Cultural Resources</div>
                <button onclick="culturalresources()">Go</button>
            </div>
        </div>
    </div>
    <div class="footer">
        &copy; 2024 Inspire Awareness of Indian Culture. All rights reserved.
    </div>
    
    <script type="text/javascript">
        // JavaScript function to redirect to the pages
        function exploreculture() {
            window.location.href = "/exploreculture";
        }

        function culturalevents() {
            window.location.href = "/culturalevents";
        }

        function culturalresources() {
            window.location.href = "/culturalresources";
        }
        
        function logout() {
            window.location.href = "/";
        }
    </script>
</body>
</html>
