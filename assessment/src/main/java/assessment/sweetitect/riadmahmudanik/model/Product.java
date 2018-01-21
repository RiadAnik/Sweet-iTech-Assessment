package assessment.sweetitect.riadmahmudanik.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name="product")
public class Product implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name;
	private String type;
	private int price;
	private int piece;
	private int befefit;
	
	public Product(){}

	public Product(int id, String name, String type, int price, int piece, int befefit) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.price = price;
		this.piece = piece;
		this.befefit = befefit;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getPiece() {
		return piece;
	}

	public void setPiece(int piece) {
		this.piece = piece;
	}

	public int getBefefit() {
		return befefit;
	}

	public void setBefefit(int befefit) {
		this.befefit = befefit;
	}
	

	
}

