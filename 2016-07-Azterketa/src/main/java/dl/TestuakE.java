package dl;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the testuak database table.
 * 
 */
@Entity
@Table(name="testuak")
@NamedQuery(name="TestuakE.findAll", query="SELECT t FROM TestuakE t")
public class TestuakE implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idtestuak;

	private String fill;

	private String testua;

	private int x;

	private int y;

	//uni-directional many-to-one association to IrudiakE
	@ManyToOne
	@JoinColumn(name="irudiak_izena")
	private IrudiakE irudiakE;

	public TestuakE() {
	}

	public int getIdtestuak() {
		return this.idtestuak;
	}

	public void setIdtestuak(int idtestuak) {
		this.idtestuak = idtestuak;
	}

	public String getFill() {
		return this.fill;
	}

	public void setFill(String fill) {
		this.fill = fill;
	}

	public String getTestua() {
		return this.testua;
	}

	public void setTestua(String testua) {
		this.testua = testua;
	}

	public int getX() {
		return this.x;
	}

	public void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return this.y;
	}

	public void setY(int y) {
		this.y = y;
	}

	public IrudiakE getIrudiakE() {
		return this.irudiakE;
	}

	public void setIrudiakE(IrudiakE irudiakE) {
		this.irudiakE = irudiakE;
	}

}