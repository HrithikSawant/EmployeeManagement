package org.management.controller;

import org.management.dao.EmployeeDao;
import org.management.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private EmployeeDao EmployeeDao;

    @RequestMapping(path = "/")
    public String Home(Model model){
        List<Employee> list = this.EmployeeDao.getAllEmployee();
        model.addAttribute("list",list);
        return "index";
    }

    @RequestMapping(path = "/delete/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id){
        System.out.println(id);
        this.EmployeeDao.delete(id);
        return  "redirect:/";
    }

    @RequestMapping(path = "/add",method = RequestMethod.POST)
    public String addEmployee(@ModelAttribute Employee employee){
        this.EmployeeDao.Add(employee);
        return "redirect:/";
    }


    @RequestMapping(path = "/EditEmployee/{id}",method = RequestMethod.GET)
    public String EditPage(@PathVariable("id") int id,Model model){
      Employee employee  = this.EmployeeDao.getEmployee(id);
      model.addAttribute("employeeDetail",employee);
        return "Edit";
    }


    @RequestMapping(path = "/update",method = RequestMethod.POST)
    public String updateEmployee(@ModelAttribute Employee employee){
        System.out.println(employee);
        this.EmployeeDao.Edit(employee);
        return "redirect:/";
    }
}
