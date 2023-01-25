package spring.phonedir.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.phonedir.dao.DatasDao;
import spring.phonedir.model.Contact;
import spring.phonedir.model.Login;
import spring.phonedir.model.Phone;



@Service
public class DatasService {
	@Autowired
	private DatasDao datasDao;
	public int insert(Login login) {
		return this.datasDao.insert(login);
	}
	public Login fetchtable(int id) {
		return this.datasDao.fetchfromtable(id);
	}
	public List<Login> fetchall(){
		return this.datasDao.getallfromtable();
	}
	public void deltable(int id) {
		this.datasDao.delfromtable(id);
	}
	public void updatetable(Login login) {
		this.datasDao.updatetable(login);
	}
	public List<Login> searchfromtable(String username ) {
		List <Login> datas=this.datasDao.search(username);
		return datas;
	}
	public List<Login> loginfromtable(String username,String password ) {
		List <Login> datas=this.datasDao.loginme(username,password);
		return datas;
	}
	// phone entity
	
	public int insertphone(Phone phone) {
		return this.datasDao.insertphone(phone);
	}
	public Phone fetchtablephone(int id) {
		return this.datasDao.fetchfromtablephone(id);
	}
	public List<Phone> fetchallphone(){
		return this.datasDao.getallfromtablephone();
	}
	public void deltablephone(int id) {
		this.datasDao.delfromtablephone(id);
	}
	public void updatetablephone(Phone phone) {
		this.datasDao.updatetablephone(phone);
	}
	public List<Phone> searchbyname(String name ) {
		List <Phone> datas=this.datasDao.searchphonebyname(name);
		return datas;
	}
	public List<Phone> searchbycity(String city ) {
		List <Phone> datas=this.datasDao.searchphonebycity(city);
		return datas;
	}
	public List<Phone> searchbypost(String post ) {
		List <Phone> datas=this.datasDao.searchphonebypost(post);
		return datas;
	}
	public List<Phone> searchbyemail(String email ) {
		List <Phone> datas=this.datasDao.searchphonebyemail(email);
		return datas;
	}
	
	//contact entity
	public int insertcontact(Contact contact) {
		return this.datasDao.insertcontact(contact);
	}
	public List<Contact> fetchallcontact(){
		return this.datasDao.getallfromcontact();
	}
	public void deltablecontact(int id) {
		this.datasDao.delfromcontact(id);
	}
	public void updatetablecontact(Contact contact) {
		this.datasDao.updatecontact(contact);
	}
}
