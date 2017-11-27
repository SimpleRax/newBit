package cn.Rax.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.Rax.entity.Employee;

@Repository("EmployeeDAO")
public interface EmployeeDAO {
	public void save(Employee e);
	public List<Employee> findAll();
	public void delete(String id);
	public Employee findById(String id);
	public void update(Employee e);
	public Employee findByName(String username);
}
