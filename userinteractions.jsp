<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Interactions</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fdf5e6;
        }
        .navbar {
            background-color: #ff9800;
            padding: 10px 20px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar h1 {
            margin: 0;
            font-size: 24px;
        }
        .navbar .nav-links {
            display: flex;
            gap: 20px;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 16px;
        }
        .navbar a:hover {
            background-color: #e64a19;
            padding: 5px;
            border-radius: 5px;
        }
        .container {
            padding: 20px;
        }
        .user-list {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        .user-item {
            background-color: white;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .footer {
            background-color: #ff9800;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>User Interactions</h1>
        <div class="nav-links">
            <a href="dashboard.jsp">Dashboard</a>
            <a href="settings.jsp">Settings</a>
            <a href="help.jsp">Help</a>
        </div>
    </div>

    <div class="container">
        <h2>User Feedback</h2>
        <div class="user-list">
            <div class="user-item">
                <div class="user-name">John Doe</div>
                <div class="user-feedback">This platform is very helpful for engaging with political representatives.</div>
                <button>Respond</button>
            </div>
            <div class="user-item">
                <div class="user-name">Priya Sharma</div>
                <div class="user-feedback">I would love to see more interactive features.</div>
                <button>Respond</button>
            </div>
            <div class="user-item">
                <div class="user-name">Rahul Verma</div>
                <div class="user-feedback">The content provided is very informative, but the UI can be improved.</div>
                <button>Respond</button>
            </div>
        </div>
    </div>

    <div class="footer">
        &copy; 2024 Inspire Awareness of Indian Culture. All rights reserved.
    </div>
</body>
</html>
