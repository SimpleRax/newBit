package cn.Rax.Service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.Rax.dao.RoomDAO;
import cn.Rax.entity.Room;

@Service("RoomService")
public class RoomServiceImpl implements RoomService{

	@Resource(name="RoomDAO")
	private RoomDAO rd ; 
	
	public List<Room> findAll() {
		return rd.findAll();
	}

	public void saveRoom(Room r) {
		rd.saveRoom(r);
	}

	public void update(Room r) {
		rd.update(r);
		
	}

	public void delete(String roomNumber) {
		rd.delete(roomNumber);
		
	}

}
