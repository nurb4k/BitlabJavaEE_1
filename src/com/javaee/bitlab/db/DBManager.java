package com.javaee.bitlab.db;

import com.javaee.bitlab.db.models.Task;

import java.util.ArrayList;

public class DBManager {
    private static long taskId = 6L;
    public static ArrayList<Task> tasks = new ArrayList<>();
    static {
        tasks.add(new Task(1L, "Accept that fact Messi better than every footballer", "must done until evening", false, "2023-03-31"));
        tasks.add(new Task(2L, "Accept that fact Suarez best striker", "desc2", false, "2023-07-21"));
        tasks.add(new Task(3L, "name3", "desc3", false, "2023-04-11"));
        tasks.add(new Task(4L, "name4", "desc4", false, "2023-05-21"));
        tasks.add(new Task(5L, "name5", "desc5", false, "2023-01-23"));
    }
    public static ArrayList<Task> getTasks() {
        return tasks;
    }
    public static void addTask(Task task) {
        task.setId(taskId);
        tasks.add(task);
        taskId++;
    }
    public static Task getTask(Long id) {
        return tasks.stream().filter(task -> task.getId() == id).findAny().orElse(null);
    }
    public static void updateTask(Long taskId, boolean done, String deadline, String description, String name) {
        Task task = getTask(taskId);
        task.setDone(done);
        task.setDeadline(deadline);
        task.setDescription(description);
        task.setName(name);
    }
    public static void deleteTask(Long id) {
        tasks.removeIf(task -> task.getId() == id);
    }
}
