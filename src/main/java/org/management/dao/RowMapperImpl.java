package org.management.dao;

import org.management.entity.Employee;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RowMapperImpl implements RowMapper<Employee> {
    @Override
    public Employee mapRow(ResultSet resultSet, int i) throws SQLException {
        Employee employee = new Employee();
        employee.setId(resultSet.getLong(1));
        employee.setName(resultSet.getString(2));
        employee.setEmail(resultSet.getString(3));
        employee.setJobTitle(resultSet.getString(4));
        employee.setPhone(resultSet.getString(5));
        employee.setImageUrl(resultSet.getString(6));
        employee.setEmployeeCode(resultSet.getString(7));
        return employee;
    }
}
