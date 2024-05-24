package dl;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the zirkuluak database table.
 * 
 */
@Entity
@Table(name="zirkuluak")
@NamedQuery(name="ZirkuluakE.findAll", query="SELECT z FROM ZirkuluakE z")
public class ZirkuluakE implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idzirkuluak;

	private int cx;

	private int cy;

	private String fill;

	private float r;

	//uni-directional many-to-one association to IrudiakE
	@ManyToOne
	@JoinColumn(name="irudiak_izena")
	private IrudiakE irudiakE;

	public ZirkuluakE() {
	}

	public int getIdzirkuluak() {
		return this.idzirkuluak;
	}

	public void setIdzirkuluak(int idzirkuluak) {
		this.idzirkuluak = idzirkuluak;
	}

	public int getCx() {
		return this.cx;
	}

	public void setCx(int cx) {
		this.cx = cx;
	}

	public int getCy() {
		return this.cy;
	}

	public void setCy(int cy) {
		this.cy = cy;
	}

	public String getFill() {
		return this.fill;
	}

	public void setFill(String fill) {
		this.fill = fill;
	}

	public float getR() {
		return this.r;
	}

	public void setR(float r) {
		this.r = r;
	}

	public IrudiakE getIrudiakE() {
		return this.irudiakE;
	}

	public void setIrudiakE(IrudiakE irudiakE) {
		this.irudiakE = irudiakE;
	}

}