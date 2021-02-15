package com.example.TaskManager.services;


import com.example.TaskManager.entities.Task;
import com.example.TaskManager.Repositories.TaskRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class TaskService {

    @Autowired
    private TaskRepo taskRepo;


    public Iterable<Task> GetAllTasks(){
        return taskRepo.findAll();
    }

    public Optional<Task> getTaskByID(Integer id){
        return taskRepo.findById(id);
    }

    public Task addTask(Task task){
        return taskRepo.save(task);
    }

    public void deleteTask(Task task){
        taskRepo.delete(task);
    }
}
