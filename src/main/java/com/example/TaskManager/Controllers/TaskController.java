package com.example.TaskManager.Controllers;

import com.example.TaskManager.entities.Task;
import com.example.TaskManager.exceptions.TaskNotFoundException;
import com.example.TaskManager.services.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.Optional;

@Controller
@SessionAttributes("name")
public class TaskController {

    @Autowired
    TaskService taskService;


    @RequestMapping(value = "/display-tasks", method = RequestMethod.GET)
    public String displayTasks(ModelMap model) {
        String name = (String) model.get("name");
        Iterable<Task> tasks = taskService.GetAllTasks();

        model.put("tasks", taskService.GetAllTasks());
        return "display-tasks";
    }

    @RequestMapping(value = "/create-task", method = RequestMethod.GET)
    public String showCreateTask(ModelMap model){
        return "create-task";
    }

    @RequestMapping(value = "/delete-task", method = RequestMethod.POST)
    public String submitDeleteTask(ModelMap model, @RequestParam String id){
        int ID=Integer.valueOf(id);
        Optional<Task> oTask=taskService.getTaskByID(ID);
        if(oTask.isPresent()){
            Task task= oTask.get();
            taskService.deleteTask(task);
        }else{
            model.put("Error", "not-found-error");
        }
        return "delete-task";
    }

    @RequestMapping(value = "/create-task", method = RequestMethod.POST)
    public String submitCreateTask(ModelMap model, @RequestParam String name, @RequestParam String startdate){
        model.put("name", name);
        Task task=new Task();
        task.setName(name);
        //task.setStartDate();
        taskService.addTask(task);
        return "display-tasks";
    }

    public String submitUpdateTask(ModelMap model, @ModelAttribute Task task){
        Optional<Task> oldTaskO=taskService.getTaskByID(task.getId());
        Task oldTask;
        if(oldTaskO.isPresent()){
            oldTask=oldTaskO.get();
            taskService.deleteTask(oldTask);
            taskService.addTask(task);
        }else {
            model.put("Error", "Error-not-found");
        }

        return "update-task";
    }

    public String showUpdateTask(ModelMap model){
        Integer id=(Integer)model.get("taskID");
        Optional<Task> task;
        try {
            task=taskService.getTaskByID(id);
        }catch (TaskNotFoundException e) {
            model.put("Error", "not-found-error");
        }
        return "create-task";
    }





}
