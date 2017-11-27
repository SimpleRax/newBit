package cn.Rax.Service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.Rax.dao.EmployeeDAO;
import cn.Rax.entity.Employee;

@Service("EmpService")
public class EmpServiceImpl implements EmpService {

	@Resource(name="EmployeeDAO")
	private EmployeeDAO ed;
	
	public List<Employee> findAll() {
		List<Employee> list =	ed.findAll();
		return list;
	}

	public boolean checkName(String username) {
		System.out.println("checkName");
		Employee emp = null;
		emp = ed.findByName(username);
		if(emp==null){
			return false;
		}
		return true;
	}

	public Employee checkLogin(String name, String pwd) {
		Employee emp = null;
		emp = ed.findByName(name);
		if(emp==null){
			throw new AppException("”√ªß√˚¥ÌŒÛ");
		}
		if(!emp.getPassword().equals(pwd)){
			throw new AppException("√‹¬Î¥ÌŒÛ");
		}
		return emp;
	}

	public void del(String id) {
		ed.delete(id);
	}

	public void update(Employee e) {
		System.out.println("ServiceEmployee");
		ed.update(e);
		System.out.println("ServiceEmployee end....");
	}

	public Employee findById(String id) {
		return ed.findById(id);
	}

	public void save(Employee e) {
		if(!"".equals(e.getName())&&!"".equals(e.getPassword())&&!"".equals(e.getDep())&&!"".equals(e.getUsername())&&!"".equals(e.getId())&&!"".equals(e.getCareer())){
			ed.save(e);
		}
		
	}

	
	

}
