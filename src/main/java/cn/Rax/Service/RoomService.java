package cn.Rax.Service;

import java.util.List;


import cn.Rax.entity.Room;

public interface RoomService {
	public List<Room> findAll();
	public void saveRoom(Room r);
	public void update(Room r);
	public void delete(String roomNumber);
}
