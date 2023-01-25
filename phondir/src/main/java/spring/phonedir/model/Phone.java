package spring.phonedir.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="phone")
public class Phone {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private int id;
	@Column(name="name")
	private String name;
	@Column(name="city")
	private String city;
	@Column(name="post")
	private String post;
	@Column(name="email")
	private String email;
	@Column(name="phone")
	private Long phone;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getPhone() {
		return phone;
	}
	public void setPhone(Long phone) {
		this.phone = phone;
	}
	public Phone() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Phone(int id, String name, String city, String post, String email, Long phone) {
		super();
		this.id = id;
		this.name = name;
		this.city = city;
		this.post = post;
		this.email = email;
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Phone [id=" + id + ", name=" + name + ", city=" + city + ", post=" + post + ", email=" + email
				+ ", phone=" + phone + "]";
	}
	
	
}
