package cn.Rax.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.Rax.entity.Student;

@Repository("StudentDAO")
public interface StudentDAO {
	public List<Student> findAll();
	public Student findById(@Param("id")String id,@Param("roomNumber")String roomNumber);
	public List<Student> findByroomNumber(@Param("roomNumber")String roomNumber);
	public void save(Student s);
	public void update(Student s);
	public void delete(String id);
}
