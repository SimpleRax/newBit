package cn.Rax.entity;

public class Room {
	private String roomNumber;
	private String chanxian;
	private String ctime;
	private Integer seat;
	private String teachername;
	public String getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}
	public String getChanxian() {
		return chanxian;
	}
	public void setChanxian(String chanxian) {
		this.chanxian = chanxian;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	public Integer getSeat() {
		return seat;
	}
	public void setSeat(Integer seat) {
		this.seat = seat;
	}
	public String getTeachername() {
		return teachername;
	}
	public void setTeachername(String teachername) {
		this.teachername = teachername;
	}
	@Override
	public String toString() {
		return "Room [roomNumber=" + roomNumber + ", chanxian=" + chanxian + ", ctime=" + ctime + ", seat=" + seat
				+ ", teachername=" + teachername + "]";
	}

	
	
}
