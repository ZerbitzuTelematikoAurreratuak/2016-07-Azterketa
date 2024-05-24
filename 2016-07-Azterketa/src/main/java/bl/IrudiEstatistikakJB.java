package bl;

public class IrudiEstatistikakJB {

	private IrudiakEJB irudia;
	private int zirkuluKop;
	private int testuKop;
	private int width;
	private int height;
	public IrudiakEJB getIrudia() {
		return irudia;
	}
	public void setIrudia(IrudiakEJB irudia) {
		this.irudia = irudia;
	}
	public int getZirkuluKop() {
		return zirkuluKop;
	}
	public void setZirkuluKop(int zirkuluKop) {
		this.zirkuluKop = zirkuluKop;
	}
	public int getTestuKop() {
		return testuKop;
	}
	public void setTestuKop(int testuKop) {
		this.testuKop = testuKop;
	}
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public IrudiEstatistikakJB(IrudiakEJB irudia, int zirkuluKop, int testuKop, int width, int height) {
		super();
		this.irudia = irudia;
		this.zirkuluKop = zirkuluKop;
		this.testuKop = testuKop;
		this.width = width;
		this.height = height;
	}
	public IrudiEstatistikakJB() {
		super();
	}
	
	
	
}
