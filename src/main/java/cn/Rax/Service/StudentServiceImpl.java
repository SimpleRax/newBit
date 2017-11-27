package cn.Rax.Service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.Rax.dao.StudentDAO;
import cn.Rax.entity.Student;

@Service("StudentService")
public class StudentServiceImpl implements StudentService{
	
	@Resource(name="StudentDAO")
	private StudentDAO sd ;

	public List<Student> findAll() {
		return sd.findAll();
	}

	public Student findById(String id,String number) {
		
		return sd.findById(id,number);
	}

	public List<Student> findByroomNumber(String roomNumber) {
		
		return sd.findByroomNumber(roomNumber);
	}

	public void save(Student s) {
		if(!"".equals(s.getName())||!"".equals(s.getRoomNumber())||!"".equals(s.getId())){
			sd.save(s);
		}
	}

	public void update(Student s) {
		sd.update(s);
	}

	public void delete(String id) {
		sd.delete(id);
		
	}
	
	
}
