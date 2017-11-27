package cn.Rax.entity;

public class Student {
	private String roomNumber;
	private String name;
	private String teacher;
	private String type;
	private String education;
	private String major;
	private String base;
	private String information;
	private String now;
	private String id;
	private String progress;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getBase() {
		return base;
	}
	public void setBase(String base) {
		this.base = base;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public String getNow() {
		return now;
	}
	public void setNow(String now) {
		this.now = now;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", roomNumber=" + roomNumber + ", name=" + name + ", teacher=" + teacher
				+ ", type=" + type + ", education=" + education + ", major=" + major + ", base=" + base
				+ ", information=" + information + ", now=" + now + ", progress=" + progress + "]";
	}

	
}
