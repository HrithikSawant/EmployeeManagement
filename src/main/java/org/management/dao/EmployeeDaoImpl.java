package org.management.dao;

import org.management.entity.Employee;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class EmployeeDaoImpl implements EmployeeDao{

    private JdbcTemplate JdbcTemplate;
    public void setJdbcTemplate(org.springframework.jdbc.core.JdbcTemplate jdbcTemplate) {
        JdbcTemplate = jdbcTemplate;
    }


    @Override
    public int Add(Employee employee) {
        //insert query
        String query ="INSERT INTO employees(name,email,jobTitle,phone,imageUrl,employeeCode) VALUES(?,?,?,?,?,?)";
        int result = this.JdbcTemplate.update(query,employee.getName(),employee.getEmail(),employee.getJobTitle(),
                employee.getPhone(),employee.getImageUrl(),employee.getEmployeeCode());
        return result;
    }

    @Override
    public int Edit(Employee employee) {
        //update Qperation
        String query = "UPDATE employees SET name =?,email=?,jobTitle=?,phone=?,imageUrl=?,employeeCode=? WHERE id = ?";
        int result = this.JdbcTemplate.update(query,employee.getName(),employee.getEmail(),employee.getJobTitle(),
                employee.getPhone(),employee.getImageUrl(),employee.getEmployeeCode(),employee.getId());
        return result;
    }

    @Override
    public int delete(int id) {
        //Delete Operation
        String query ="DELETE FROM employees WHERE id=?";
        int result = this.JdbcTemplate.update(query,id);
        return 0;
    }

    @Override
    public Employee getEmployee(int employeeId) {
        //selecting single student data
        String query ="SELECT * FROM employees WHERE id=?";
        Employee employee = this.JdbcTemplate.queryForObject(query,new RowMapperImpl(),employeeId);
        return employee;
    }

    @Override
    public List<Employee> getAllEmployee() {
        //SELECTING MULTIPLE ROW
        String query = "SELECT * FROM employees";
        List<Employee> employees = this.JdbcTemplate.query(query,new RowMapperImpl());
        return employees;
    }
}
