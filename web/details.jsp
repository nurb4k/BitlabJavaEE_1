<%@ page import="com.javaee.bitlab.db.models.Task" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp"
          crossorigin="anonymous">
    <title>Task details</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }

        /* Improved navbar styles */
        .navbar {
            display: flex;
            padding: 20px;
            justify-content: space-between;
            align-items: center;
            background-color: #0a2b84;
            color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .navbar strong {
            font-size: 24px;
        }

        .navbar a {
            text-decoration: none;
            color: white;
            font-size: 18px;
        }

        /* Improved form styles */
        .form-group {
            margin-top: 20px;
        }

        .form-group label {
            font-size: 18px;
        }

        .form-control {
            font-size: 16px;
        }

        textarea.form-control {
            resize: none;
        }

        /* Button styles */
        .btn {
            font-size: 18px;
            font-weight: bold;
            text-transform: uppercase;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.2s ease-in-out;
        }

        .btn-success {
            background-color: #28a745;
            border: none;
            color: white;
            padding: 12px 24px;
        }

        .btn-success:hover {
            background-color: #218838;
        }

        .btn-danger {
            background-color: #dc3545;
            border: none;
            color: white;
            padding: 12px 24px;
        }

        .btn-danger:hover {
            background-color: #c82333;
        }

        /* Page-specific styles */
        .container {
            max-width: 960px;
            margin: 0 auto;
            padding: 20px;
        }

        .details {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .details form {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background-color: white;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
    </style>

</head>
<body>

<div>
    <div class="navbar">
        <div>
            <strong>Todo</strong>
        </div>
        <div>
            <a href="/">All tasks</a>
        </div>
    </div>
    <%
        Task task = (Task) request.getAttribute("task");
    %>
    <div style="display: flex; justify-content: center">
            <div>
                    <form action="/details" method="post">
                        <div class="form-group">
                            <label> Имя:
                                <input class="form-control" name="name" type="text" value="<%out.println(task.getName());%>">
                            </label>
                        </div>
                        <div  class="form-group" style=" margin-top: 20px">
                            <label> Описание:
                                <textarea class="form-control" name="description" id="" cols="75" rows="4"><%out.println(task.getDescription());%></textarea>
                            </label>
                        </div>
                        <div  class="form-group" style=" margin-top: 20px">
                            <label> Укажите дедлайн:
                                <input style="width: 600px" class="form-control" name="deadline" type="date" value="<% out.print(task.getDeadline()); %>">
                            </label>
                        </div>
                        <div  class="form-group" style=" margin-top: 20px ;margin-bottom: 20px">
                            <label> Is done:
                                <select name="isDone" class="form-control" style="width: 600px" >
                                    <option value="false">no</option>
                                    <option <% if (task.isDone()){%>selected<%}%> value="true">yes</option>
                                </select>
                            </label>
                        </div>
                        <input type="hidden" name="id" value="<% out.print(task.getId()); %>">
                        <button class="btn btn-success">save</button>
                    </form>
                <form action="/delete" method="post">
                    <input type="hidden" name="id" value="<% out.print(task.getId()); %>">
                    <button class="btn btn-danger">delete</button>
                </form>
            </div>
    </div>
</div>
</body>
</html>
