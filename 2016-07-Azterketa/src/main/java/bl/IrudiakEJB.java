package bl;

import java.util.List;

import javax.annotation.Resource;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import dl.IrudiakE;

/**
 * Session Bean implementation class IrudiakEJB
 */
@Stateless
@LocalBean
public class IrudiakEJB {

	@Resource private javax.ejb.EJBContext ejbContext;
	@PersistenceContext private EntityManager em;
	
    /**
     * Default constructor. 
     */
	
	@SuppressWarnings("unchecked")
	public List<IrudiakE> irudiakLortuDB() {
		return (List<IrudiakE>)em.createNamedQuery("IrudiakE.findAll").getResultList();
	}
	
    public IrudiakEJB() {
        // TODO Auto-generated constructor stub
    }

}
