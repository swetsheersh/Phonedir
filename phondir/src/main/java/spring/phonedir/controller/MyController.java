package spring.phonedir.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.protobuf.Method;

import spring.phonedir.model.Contact;
import spring.phonedir.model.Login;
import spring.phonedir.model.Phone;
import spring.phonedir.service.DatasService;

@Controller
public class MyController {
	@Autowired
	private DatasService ds;
	@RequestMapping("/home")
	public String home(HttpSession session) {
		if(session.getAttribute("username")!=null) {
			session.removeAttribute("username");
		}
		return "index";
	}
	@RequestMapping("/login")
	public String login(HttpSession session) {
		if(session.getAttribute("username")!=null) {
			session.removeAttribute("username");
		}
		return "login";
	}
	@RequestMapping("/register")
	public String register(HttpSession session) {
		if(session.getAttribute("username")!=null) {
			session.removeAttribute("username");
		}
		return "register";
	}
	@RequestMapping("/search")
	public String search(HttpSession session) {
		if(session.getAttribute("username")!=null) {
			session.removeAttribute("username");
		}
		return "search";
	}
	@RequestMapping("/contact")
	public String contact(HttpSession session) {
		if(session.getAttribute("username")!=null) {
			session.removeAttribute("username");
		}
		return "contact";
	}
	@RequestMapping("/about")
	public String about(HttpSession session) {
		if(session.getAttribute("username")!=null) {
			session.removeAttribute("username");
		}
		return "about";
	}
	@RequestMapping(path="/registerme",method =RequestMethod.POST)
	public String registerme(@ModelAttribute Login login,Model m) {
		System.out.println(login);
		List<Login>datas=ds.searchfromtable(login.getUsername());
		if(datas.size()>0) {
			m.addAttribute("msg","Username allready exists! Try another one");
			return "register";
		}
		m.addAttribute("msg", login.getUsername());
		m.addAttribute("msg1", login.getPassword());
		ds.insert(login);
		return "registersuccess";
	}
	@RequestMapping(path="/loginme",method  =RequestMethod.POST)
	public String loginme(@RequestParam("username")String username,@RequestParam("password")String password ,Model m,HttpSession session) {
		List<Login>datas=ds.loginfromtable(username,password);
		if(datas.size()==0) {
			m.addAttribute("msg", "Invaild!! username or password Try with correct one");
			return "login";
		}
		session.setAttribute("username",username);
		List<Phone>list=ds.fetchallphone();
		m.addAttribute("list", list);
		System.out.println(datas);
		return "loginsuccess";
	}
	@RequestMapping(path="/searchsuccess",method = RequestMethod.POST)
	public String registersuccess(@RequestParam("select")String select,@RequestParam("querybox")String querybox ,Model m) {
		final List<Phone> datas;
		//System.out.println(select);
		if(select.equals("Name")) {
			datas=ds.searchbyname(querybox);
		}
		else if (select.equals("Email")) {
			datas=ds.searchbyemail(querybox);
		}
		else if (select.equals("Post")) {
			datas=ds.searchbypost(querybox);
		}
		else {
			datas=ds.searchbycity(querybox);
		}
		m.addAttribute("list", datas);
		System.out.println(datas);
		return "finding";
	}
	@RequestMapping(path="/insert")
	public String insert(HttpSession session) {
		if(session.getAttribute("username")==null) {
			return "redirect:login";
		}
		return "insert";
	}
	@RequestMapping(path="/insertme",method = RequestMethod.POST)
	public String insertme(@ModelAttribute Phone phone,Model m,HttpSession session) {
		if(session.getAttribute("username")==null) {
			return "redirect:login";
		}
		ds.insertphone(phone);
		List<Phone>list=ds.fetchallphone();
		m.addAttribute("list", list);
		return "loginsuccess";
	}
	@RequestMapping(path="/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("username");
		return "redirect:login";
	}
	@RequestMapping(path="/del/{id}")
	public String del(@PathVariable("id") int id,Model m ,HttpSession session) {
		if(session.getAttribute("username")==null) {
			return "redirect:login";
		}
		ds.deltablephone(id);
		List<Phone>list=ds.fetchallphone();
		m.addAttribute("list", list);
		return "loginsuccess";
	}
	@RequestMapping(path="/upd/{id}")
	public String upd(@PathVariable("id") int id,Model m ,HttpSession session,HttpServletRequest request) {
		if(session.getAttribute("username")==null) {
			String s=request.getContextPath();
			return "redirect:login";
		}
		String s=request.getContextPath();
		Phone phone=ds.fetchtablephone(id);
		m.addAttribute("phone", phone);
		return "update";
	}
	@RequestMapping(path="/updateme",method = RequestMethod.POST)
	public String updateme(@ModelAttribute Phone phone,Model m,HttpSession session) {
		if(session.getAttribute("username")==null) {
			return "redirect:login";
		}
		System.out.println(phone);
		ds.updatetablephone(phone);
		List<Phone>list=ds.fetchallphone();
		m.addAttribute("list", list);
		return "loginsuccess";
	}
	@RequestMapping(path="/contactme",method = RequestMethod.POST)
	public String contactme(@ModelAttribute Contact contact,Model m,HttpSession session) {
		ds.insertcontact(contact);
		m.addAttribute("msg", "Our Team Will Contact You Soon! Thanks!!");
		return "contact";
	}
	
}
