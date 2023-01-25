package spring.phonedir.dao;

import java.util.List;

import spring.phonedir.model.Contact;
import spring.phonedir.model.Login;
import spring.phonedir.model.Phone;



public interface DatasDao {
	public int insert(Login login);
	//get the single data(object)
	public Login fetchfromtable(int id);
	//get all data
	public List<Login> getallfromtable();
	//delete from table
	public void delfromtable(int id);
	//update
	public void updatetable(Login login);
	//search
	public List<Login> search(String username);
	public List<Login> loginme(String username,String password);
	
	
	//phone entity
	public int insertphone(Phone phone);
	public Phone fetchfromtablephone(int id);
	public List<Phone> getallfromtablephone();
	public void delfromtablephone(int id);
	public void updatetablephone(Phone phone);
	public List<Phone> searchphonebyname(String name);
	public List<Phone> searchphonebycity(String city);
	public List<Phone> searchphonebypost(String post);
	public List<Phone> searchphonebyemail(String email);
	
	//contact entity
	public int insertcontact(Contact contact);
	public List<Contact> getallfromcontact();
	public void delfromcontact(int id);
	public void updatecontact(Contact contact);
}
