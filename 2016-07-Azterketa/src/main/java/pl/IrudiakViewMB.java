package pl;

import java.io.Serializable;
import java.util.List;

import javax.ejb.EJB;
import javax.faces.view.ViewScoped;
import javax.inject.Named;

import bl.IrudiakEJB;
import dl.IrudiakE;

@Named
@ViewScoped
public class IrudiakViewMB implements Serializable {

	@EJB private IrudiakEJB iEJB;
	
	private static final long serialVersionUID = 1L;

	private List<IrudiakE> irudiakDB;
	
	public List<IrudiakE> lortuIrudiakDB(){
		
		if(irudiakDB == null) {
			irudiakDB = iEJB.irudiakLortuDB();
		}
		
		return irudiakDB;
	}

}
