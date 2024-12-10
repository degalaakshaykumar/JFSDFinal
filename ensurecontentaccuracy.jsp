<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ensure Content Accuracy</title>
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
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #ff9800;
            color: white;
        }
        tr:hover {
            background-color: #f5f5f5;
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
        <h1>Ensure Content Accuracy</h1>
        <div class="nav-links">
            <a href="dashboard.jsp">Dashboard</a>
            <a href="settings.jsp">Settings</a>
            <a href="help.jsp">Help</a>
        </div>
    </div>

    <div class="container">
        <h2>Content Accuracy Review</h2>
        <table>
            <thead>
                <tr>
                    <th>Content ID</th>
                    <th>Title</th>
                    <th>Category</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>101</td>
                    <td>Importance of Culture</td>
                    <td>Culture</td>
                    <td>Pending Review</td>
                    <td><button>Review</button></td>
                </tr>
                <tr>
                    <td>102</td>
                    <td>Famous Indian Artists</td>
                    <td>Art</td>
                    <td>Reviewed</td>
                    <td><button>View</button></td>
                </tr>
                <tr>
                    <td>103</td>
                    <td>Traditional Dances</td>
                    <td>Culture</td>
                    <td>Pending Review</td>
                    <td><button>Review</button></td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="footer">
        &copy; 2024 Inspire Awareness of Indian Culture. All rights reserved.
    </div>
</body>
</html>
