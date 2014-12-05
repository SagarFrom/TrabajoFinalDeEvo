
package pe.edu.upc.evolucion.Cinemazcore.test.business;

import java.util.Date;
import pe.edu.upc.evolucion.cinemaxdac.entity.Cliente;
import org.junit.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import pe.edu.upc.evolucion.cinemaxcore.base.OperacionEnum;
import pe.edu.upc.evolucion.cinemaxcore.business.ClienteBusiness;

public class ClienteBusinessNGTest {
    
    public ClienteBusinessNGTest(){
    }
    
    
     private static Cliente cliente;
     
        @BeforeClass
        public static void setUpClass() throws Exception{
            System.out.println("Inicio Test ClientefrBusiness");
        }
        
        @AfterClass
        public static void tearDownClass() throws Exception {
            System.out.println("Fin Test ClienteBusiness");
        }
        
        @Test(priority=1)
        public void testCrear() throws Exception {
            cliente = new Cliente();
            cliente.setNombre("Franco");
            cliente.setContrasenia("1234");
            cliente.setTipo("A");
            try {
                ClienteBusiness.getInstance().ejecutar(OperacionEnum.GUARDAR,cliente);
                Assert.assertTrue(cliente.getIdCliente().equals(-1) == false);
            } catch(Exception ex) { 
                Assert.fail(ex.getMessage());
            }
        }
        
        @Test(priority = 2)
        public void testEliminar() throws Exception {
            cliente = new Cliente();
            cliente.setIdCliente(1);
            
            try {
                ClienteBusiness.getInstance().ejecutar(OperacionEnum.ELIMINAR,cliente);
                Assert.assertTrue(cliente.getIdCliente().equals(-1) == false);
            } catch(Exception ex) { 
                Assert.fail(ex.getMessage());
            }
        }
}
