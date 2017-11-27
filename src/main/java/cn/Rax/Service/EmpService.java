package cn.Rax.Service;

import java.util.List;

import cn.Rax.entity.Employee;



public interface EmpService {
	public List<Employee> findAll();
	public boolean checkName(String username);
	public Employee checkLogin(String name,String pwd);
	public void del(String id);
	public void update(Employee e);
	public Employee findById(String id);
	public void save(Employee e);
}
