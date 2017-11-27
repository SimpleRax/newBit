package cn.Rax.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import cn.Rax.Service.AppException;
import cn.Rax.Service.EmpService;
import cn.Rax.Service.LoginadmService;
import cn.Rax.Service.RoomService;
import cn.Rax.Service.StudentService;
import cn.Rax.entity.Adm;
import cn.Rax.entity.Employee;
import cn.Rax.entity.Room;
import cn.Rax.entity.Student;


@Controller
public class LoginController {
	
	@Resource(name="loginadmService")
	private LoginadmService service;
	
	@Resource(name="EmpService")
	private EmpService es;
	
	@Resource(name="StudentService")
	private StudentService ss;
	
	@Resource(name="RoomService")
	private RoomService rs;
	
	
	@RequestMapping("/tologin.cn")
	public String toLoging(){
		System.out.println("toLogin");
		return "login";
	}
	
	@RequestMapping("/login.cn")
	public String login(HttpSession session,ModelMap mm,Adm ad,HttpServletRequest req) throws JsonProcessingException{
		System.out.println("login");
	
		String name = req.getParameter("username");
		String pwd = req.getParameter("password");
		if("psl123456".equals(name)){
			Adm adm =service.checkLogin(ad);
			session.setAttribute("adm", adm);
			List<Employee> employees = es.findAll();
			mm.addAttribute("employees", employees);
			return "user";
		}else{
			if(es.checkName(name)){
				Employee emp = es.checkLogin(name, pwd);
				session.setAttribute("emp", emp);
				return "student";
			}
			service.checkLogin(ad);
		}
		return "redirect:tologin.cn";
	}
	
	@RequestMapping("/user1")
	public String user1(){
		return "user";
	}
	
	@RequestMapping("/user")
	@ResponseBody
	public String user() throws JsonProcessingException{
		List<Employee> employees = es.findAll();
		ObjectMapper om = new ObjectMapper();
		String jsonStr = om.writeValueAsString(employees);
		return jsonStr;
	}
	
	@RequestMapping("/manage")
	public String manage(){
		return "manage";
	}
	
	@RequestMapping("/del")
	public String del(HttpServletRequest req){
		String id = req.getParameter("id");
		es.del(id);
		return "redirect:user";
	}
	
	@RequestMapping("/load")
	@ResponseBody
	public String load(ModelMap map,HttpServletRequest req) throws JsonProcessingException{
		System.out.println(1111);
		String id=req.getParameter("id");
		Employee e  = es.findById(id);
		ObjectMapper om = new ObjectMapper();
		String jsonStr = om.writeValueAsString(e);
		return jsonStr;
	}
	
	@RequestMapping("/update.cn")
	public String update(Employee e,HttpServletRequest req,HttpServletResponse res) throws Exception{
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("text/html;charset=utf-8");
		es.update(e);
		return "user";
	}
	
	@RequestMapping("/save.cn")
	public String save(Employee e,HttpServletRequest req){
		System.out.println("save");
		es.save(e);
		return "user";
	}
	
	@ExceptionHandler
	public String exception(Exception e ,HttpServletRequest req){
		System.out.println("exception()");
		if(e instanceof AppException){
			//应用异常，需要明确提示用户，采取正确的操作
			req.setAttribute("login_failed", e.getMessage());
			//转发到登录页面
			return "login";
		}
		return "error";
	}
	
	/**学员房间                   增                     删                              改
	 * @throws JsonProcessingException */
	
	
	@RequestMapping("/examine1")
	public String student1(){
		return "examine";
	}
	
	@RequestMapping("/examine")
	@ResponseBody
	public String examine() throws JsonProcessingException{	
		List<Room> room = rs.findAll();
		System.out.println(room);
		ObjectMapper om = new ObjectMapper();
		String jsonStr = om.writeValueAsString(room);
		return jsonStr;
	}
	
	@RequestMapping("/fs")
	@ResponseBody
	public String findStudent(HttpServletRequest req) throws JsonProcessingException {
		String roomNumber = req.getParameter("id");
		System.out.println(roomNumber);
		List<Student> student = 	ss.findByroomNumber(roomNumber);
		ObjectMapper om = new ObjectMapper();
		String jsonStr = om.writeValueAsString(student);
		return  jsonStr;
	}
	
	@RequestMapping("/updatemanage")
	public String updatemanage(Room r){
		/*rs.update(r);*/
		return "manage";
	}
	
	@RequestMapping("/findmanage")
	@ResponseBody
	public String findmanage() throws JsonProcessingException{
		List<Room> list = rs.findAll();
		ObjectMapper om = new ObjectMapper();
		String jsonStr = om.writeValueAsString(list);
		return jsonStr;
	}
	
	@RequestMapping("/savemanage.cn")
	public String savemanage(Room r){
		System.out.println(11111);
		rs.saveRoom(r);
		System.out.println(222);
		return "manage";
	}
	@RequestMapping("/delmanage.cn")
	public void delmanage(String roomNumber){
		rs.delete(roomNumber);
	}
	
	
	/**学员座位            增          删                 改
	 * @throws JsonProcessingException */
	@RequestMapping("/seats")
	@ResponseBody
	public String StudentFindId(HttpServletRequest req) throws JsonProcessingException{
		String id = req.getParameter("id");
		String num = req.getParameter("roomNumber");
		System.out.println(id);
		System.out.println(num);
		Student s = ss.findById(id,num);
		ObjectMapper om = new ObjectMapper();
		String jsonStr = om.writeValueAsString(s);
		return jsonStr;
	}
	
	@RequestMapping("/seatsfind")
	@ResponseBody
	public String StudentFindAll() throws JsonProcessingException{
		 List<Room> list = rs.findAll();
		 System.out.println(list);
		ObjectMapper om = new ObjectMapper();
		String jsonStr = om.writeValueAsString(list);
		return jsonStr;
	}
	
	
	
	@RequestMapping("/StudentSave")
	public String StudentSave(Student s){
		ss.save(s);
		return "student";
	}
	
	@RequestMapping("/StudentUpdate.cn")
	public String StudentUpdate(Student s){
		ss.update(s);
		return "student";
	}
	
	@RequestMapping("/delStudent.cn")
	public String delStudent(HttpServletRequest req){
		System.out.println(1);
		String id = req.getParameter("id");
		System.out.println(id);
		ss.delete(id);
		System.out.println(2);
		return "student";
	}
	
}
