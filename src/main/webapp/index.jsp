<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            height: 100%;
            background-color: #f4f7fc;
            color: #333;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
            padding: 20px;
        }

        .login-form {
            background-color: #ffffff;
            border-radius: 12px;
            padding: 40px;
            width: 100%;
            max-width: 380px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            margin-bottom: 24px;
            font-size: 26px;
        }

        .input-field {
            width: 100%;
            padding: 14px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ddd;
            background-color: #f9f9f9;
            color: #333;
            font-size: 16px;
            transition: border 0.3s ease;
        }

        .input-field:focus {
            border-color: #4CAF50;
            outline: none;
        }

        .submit-btn {
            background-color: #4CAF50;
            color: white;
            padding: 14px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #45a049;
        }

        .error-msg {
            color: #ff4d4d;
            margin-top: 12px;
            font-size: 14px;
        }

        .footer {
            margin-top: 30px;
            font-size: 14px;
            color: #777;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="login-form">
        <h2>Login</h2>
        <form action="login" method="post">
            <input type="text" name="username" class="input-field" placeholder="Username" required><br>
            <input type="password" name="password" class="input-field" placeholder="Password" required><br>
            <input type="submit" value="Login" class="submit-btn">
        </form>

        <%
            String error = request.getParameter("error");
            if ("true".equals(error)) {
        %>
        <p class="error-msg">Invalid username or password!</p>
        <% } %>
    </div>
</div>
</body>
</html>
