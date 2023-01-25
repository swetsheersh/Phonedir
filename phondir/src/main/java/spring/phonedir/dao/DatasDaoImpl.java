package spring.phonedir.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import spring.phonedir.model.Contact;
import spring.phonedir.model.Login;
import spring.phonedir.model.Phone;

@Repository
public class DatasDaoImpl implements DatasDao{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	@Override
	public int insert(Login login) {
		//insert
		Integer i=(Integer)this.hibernateTemplate.save(login);
		return i;
	}

	@Override
	public Login fetchfromtable(int id) {
		Login login= this.hibernateTemplate.get(Login.class, id);
		return login;
	}

	@Override
	public List<Login> getallfromtable() {
		List<Login> datas = this.hibernateTemplate.loadAll(Login.class);
		return datas;
	}
	@Transactional
	@Override
	public void delfromtable(int id) {
		Login login=this.hibernateTemplate.get(Login.class, id);
		this.hibernateTemplate.delete(login);
		
	}
	@Transactional
	@Override
	public void updatetable(Login login) {
		this.hibernateTemplate.update(login);
		
	}

	@Override
	public List<Login> search(String username) {
		String s="from Login where username=?";
		List<Login> datas=(List<Login>) this.hibernateTemplate.find(s, username);
		return datas;
	}

	@Override
	public List<Login> loginme(String username, String password) {
		String s="from Login where username=? and password=?";
		List<Login> datas=(List<Login>) this.hibernateTemplate.find(s, username,password);
		return datas;
	}

	//phone entity
	@Transactional
	@Override
	public int insertphone(Phone phone) {
		Integer i=(Integer)this.hibernateTemplate.save(phone);
		return i;
	}

	@Override
	public Phone fetchfromtablephone(int id) {
		Phone phone= this.hibernateTemplate.get(Phone.class, id);
		return phone;
	}

	@Override
	public List<Phone> getallfromtablephone() {
		List<Phone> datas = this.hibernateTemplate.loadAll(Phone.class);
		return datas;
	}
	@Transactional
	@Override
	public void delfromtablephone(int id) {
		Phone phone=this.hibernateTemplate.get(Phone.class, id);
		this.hibernateTemplate.delete(phone);
	}
	@Transactional
	@Override
	public void updatetablephone(Phone phone) {
		this.hibernateTemplate.update(phone);
		
	}

	@Override
	public List<Phone> searchphonebyname(String name) {
		String s="from Phone where name like ?";
		List<Phone> datas=(List<Phone>) this.hibernateTemplate.find(s, name);
		return datas;
	}

	@Override
	public List<Phone> searchphonebycity(String city) {
		String s="from Phone where city like ?";
		List<Phone> datas=(List<Phone>) this.hibernateTemplate.find(s, city);
		return datas;
	}

	@Override
	public List<Phone> searchphonebypost(String post) {
		String s="from Phone where post like ?";
		List<Phone> datas=(List<Phone>) this.hibernateTemplate.find(s, post);
		return datas;
	}

	@Override
	public List<Phone> searchphonebyemail(String email) {
		String s="from Phone where email like ?";
		List<Phone> datas=(List<Phone>) this.hibernateTemplate.find(s, email);
		return datas;
	}
	@Transactional
	@Override
	public int insertcontact(Contact contact) {
		Integer i=(Integer)this.hibernateTemplate.save(contact);
		return i;
	}

	@Override
	public List<Contact> getallfromcontact() {
		List<Contact> datas = this.hibernateTemplate.loadAll(Contact.class);
		return datas;
	}
	@Transactional
	@Override
	public void delfromcontact(int id) {
		Contact contact=this.hibernateTemplate.get(Contact.class, id);
		this.hibernateTemplate.delete(contact);
		
	}
	@Transactional
	@Override
	public void updatecontact(Contact contact) {
		this.hibernateTemplate.update(contact);
		
	}
	
	

}
