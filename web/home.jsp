<%@ page import="java.util.ArrayList" %>
<%@ page import="com.javaee.bitlab.db.models.Task" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tasks</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp"
          crossorigin="anonymous">
    <style>
        body {
            padding: 0;
        }

        .navbar {
            display: flex;
            padding: 20px;
            justify-content: flex-start;
            background-color: #0a2b84;
            color: #fff;
        }

        a {
            text-decoration: none;
            color: white;
        }
    </style>
</head>
<body>
<div class="navbar">
    <div style="width: 20%">
        <strong>Todo</strong>
    </div>
    <div style="width: 80%">
        <a href="/">All tasks</a>
    </div>
</div>
<div>
    <button style="margin-left: 40px; margin-top: 30px" type="button" class="btn btn-primary"
            data-toggle="modal" data-target="#exampleModal">
        +Add task
    </button>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="/" method="post">
                    <div class="modal-body">
                        <div>
                            <label>name:
                                <input style="width: 470px" class="form-control" type="text" name="name">
                            </label>
                        </div>
                        <div>
                            <label>description:
                                <textarea name="description" id="" cols="60" rows="4" class="form-control"></textarea>
                            </label>
                        </div>
                        <div>
                            <label>deadline:
                                <input style="width: 470px" type="date" class="form-control" name="deadline">
                            </label>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>
<div class="container">
    <table class="table">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Deadline</th>
            <th scope="col">Done</th>
            <th scope="col">details</th>
        </tr>
        </thead>
        <tbody>
        <%
            ArrayList<Task> newTasks = (ArrayList<Task>) request.getAttribute("tasks");
            if (newTasks != null) {
                for (Task task : newTasks) {
        %>
        <tr>
            <th scope="row"><% out.println(task.getId());%></th>
            <td><% out.println(task.getName());%></td>
            <td><% out.println(task.getDeadline());%></td>
            <td><% out.println(task.isDone() ? "yes" : "no");%></td>
            <td>
                <a href="/details?id=<%out.println(task.getId());%>" class="btn btn-primary">details</a>
            </td>
        </tr>
        <%
                }
            }
        %>

        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>