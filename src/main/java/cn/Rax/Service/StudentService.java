package cn.Rax.Service;

import java.util.List;

import cn.Rax.entity.Student;


public interface StudentService {
	public List<Student> findAll();
	public Student findById(String id,String roomNumber);
	public List<Student> findByroomNumber(String roomNumber);
	public void save(Student s);
	public void update(Student s);
	public void delete(String id);
}
