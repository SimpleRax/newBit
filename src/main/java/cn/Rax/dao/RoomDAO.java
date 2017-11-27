package cn.Rax.dao;

import java.util.List;

import org.springframework.stereotype.Repository;


import cn.Rax.entity.Room;
import cn.Rax.entity.Student;


@Repository("RoomDAO")
public interface RoomDAO {
	public List<Room> findAll();
	public void saveRoom(Room r);
	public void update(Room r);
	public void delete(String roomNumber);
}
