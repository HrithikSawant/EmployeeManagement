package org.management.dao;

import org.management.entity.Employee;

import java.util.List;

public interface EmployeeDao {
    public int Add(Employee employee);
    public int Edit(Employee employee);
    public int delete(int id);
    public Employee getEmployee(int employeeId);
    public List<Employee> getAllEmployee();
}
