
package pe.edu.upc.evolucion.Cinemazcore.test.business;

import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
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
}
