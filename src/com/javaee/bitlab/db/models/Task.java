package com.javaee.bitlab.db.models;

public class Task {
    private long id;
    private String name;
    private String description;
    private boolean done = false;
    private String deadline;

    // constructors
    public Task() {
    }

    public Task(long id, String name, String description, boolean done, String deadline) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.done = done;
        this.deadline = deadline;

    }

    public Task(long id, String name, String description, String deadline) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.deadline = deadline;
    }

    // getter and setters
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
