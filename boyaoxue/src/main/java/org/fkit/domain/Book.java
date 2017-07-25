package org.fkit.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * CREATE TABLE tb_book (
	id INT (11) PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR (54),
	author VARCHAR (54),
	publicationdate DATE ,
	publication VARCHAR (150),
	price DOUBLE ,
	image VARCHAR (54),
	remark VARCHAR (600),
	count INT(11),
	user_id INT(11),
	cart_id INT(11),
	fimage VARCHAR (255)
	
);
 * */
public class Book implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	private int id;				// id	
	private String name;			// 书名
	private String author;			// 作者
	private String publication;		// 出版社
	private Date publicationdate;	// 出版日期
	private Double price;			// 价格
	private String image;			// 封面图片
	private String remark;	
	private int count;	
	private int user_id;
	
	private int cart_id;
	
	private String fimage;
	private String simage;
	// 详细描述	
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
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
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublication() {
		return publication;
	}
	public void setPublication(String publication) {
		this.publication = publication;
	}
	public Date getPublicationdate() {
		return publicationdate;
	}
	public void setPublicationdate(Date publicationdate) {
		this.publicationdate = publicationdate;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public String getFimage() {
		return fimage;
	}
	public void setFimage(String fimage) {
		this.fimage = fimage;
	}
	public String getSimage() {
		return simage;
	}
	public void setSimage(String simage) {
		this.simage = simage;
	}
	
	
	
	
	@Override
	public String toString() {
		return "Book [id=" + id + ", name=" + name + ", author=" + author + ", publication=" + publication
				+ ", publicationdate=" + publicationdate + ", price=" + price + ", image=" + image + ", remark="
				+ remark + ", count=" + count + ",user_id=" + user_id + ",cart_id=" + cart_id + ""
						+ ",fimage=" + fimage + ",simage=" + simage + "]";
	}
	

}
