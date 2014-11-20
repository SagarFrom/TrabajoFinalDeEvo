/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upc.evolucion.cinemaxdac.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author proyecto
 */
@Entity
@Table(name = "pedido")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Pedido.findAll", query = "SELECT p FROM Pedido p"),
    @NamedQuery(name = "Pedido.findByIdPedido", query = "SELECT p FROM Pedido p WHERE p.idPedido = :idPedido"),
    @NamedQuery(name = "Pedido.findByPrecioTotal", query = "SELECT p FROM Pedido p WHERE p.precioTotal = :precioTotal")})
public class Pedido implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idPedido")
    private Integer idPedido;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "precioTotal")
    private Double precioTotal;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pedidoidPedido")
    private List<Ejemplar> ejemplarList;
    @JoinColumn(name = "Cliente_idCliente", referencedColumnName = "idCliente")
    @ManyToOne(optional = false)
    private Cliente clienteidCliente;

    public Pedido() {

//Vacio
    }

    public Pedido(Integer idPedido) {
//Vacio
        this.idPedido = idPedido;
    }

    public Integer getIdPedido() {
//Vacio
        return idPedido;
    }

    public void setIdPedido(Integer idPedido) {
//Vacio
        this.idPedido = idPedido;
    }

    public Double getPrecioTotal() {
//Vacio
        return precioTotal;
    }

    public void setPrecioTotal(Double precioTotal) {
//Vacio
        this.precioTotal = precioTotal;
    }

    @XmlTransient
    public List<Ejemplar> getEjemplarList() {
//Vacio
        return ejemplarList;
    }

    public void setEjemplarList(List<Ejemplar> ejemplarList) {
//Vacio
        this.ejemplarList = ejemplarList;
    }

    public Cliente getClienteidCliente() {
//Vacio
        return clienteidCliente;
    }

    public void setClienteidCliente(Cliente clienteidCliente) {
//Vacio
        this.clienteidCliente = clienteidCliente;
    }

    @Override
    public int hashCode() {
//Vacio
        int hash = 0;
        hash += (idPedido != null ? idPedido.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
//Vacio
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Pedido)) {
            return false;
        }
        Pedido other = (Pedido) object;
        if ((this.idPedido == null && other.idPedido != null) || (this.idPedido != null && !this.idPedido.equals(other.idPedido))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "pe.edu.upc.evolucion.cinemaxdac.entity.Pedido[ idPedido=" + idPedido + " ]";
    }
    
}
