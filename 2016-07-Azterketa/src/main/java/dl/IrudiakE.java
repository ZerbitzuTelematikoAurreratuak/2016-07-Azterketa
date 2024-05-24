package dl;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the irudiak database table.
 * 
 */
@Entity
@Table(name="irudiak")
@NamedQuery(name="IrudiakE.findAll", query="SELECT i FROM IrudiakE i")
public class IrudiakE implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String izena;

	private int height;

	private int width;

	public IrudiakE() {
	}

	public String getIzena() {
		return this.izena;
	}

	public void setIzena(String izena) {
		this.izena = izena;
	}

	public int getHeight() {
		return this.height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWidth() {
		return this.width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

}