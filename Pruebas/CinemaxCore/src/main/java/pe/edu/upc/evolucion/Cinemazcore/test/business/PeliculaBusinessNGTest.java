
package pe.edu.upc.evolucion.Cinemazcore.test.business;

import org.junit.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import pe.edu.upc.evolucion.cinemaxcore.base.OperacionEnum;
import pe.edu.upc.evolucion.cinemaxcore.business.ClienteBusiness;
import pe.edu.upc.evolucion.cinemaxcore.business.PeliculaBusiness;
import pe.edu.upc.evolucion.cinemaxdac.entity.Cliente;
import pe.edu.upc.evolucion.cinemaxdac.entity.Pelicula;


public class PeliculaBusinessNGTest {
    
    public PeliculaBusinessNGTest(){
        
    }
    
    private static Pelicula pelicula;
    
        @BeforeClass
        public static void setUpClass() throws Exception{
            System.out.println("Inicio Test PeliculaBusiness");
        }
        
        @AfterClass
        public static void tearDownClass() throws Exception {
            System.out.println("Fin Test PeliculaBusiness");
        }
        
        @Test(priority=1)
        public void testCrear() throws Exception {
            pelicula = new Pelicula();
            pelicula.setNombre("El Juez");
            pelicula.setNombreDirector("JuanTicona");
            pelicula.setSinapsis("Chevere");
            
            try {
                PeliculaBusiness.getInstance().ejecutar(OperacionEnum.GUARDAR,pelicula);
                Assert.assertTrue(pelicula.getIdPelicula().equals(-1) == false);
            } catch(Exception ex) { 
                Assert.fail(ex.getMessage());
            }
        }
}
