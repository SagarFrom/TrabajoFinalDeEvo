/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upc.evolucion.cinemaxdac.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author proyecto
 */
@Entity
@Table(name = "ejemplar")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Ejemplar.findAll", query = "SELECT e FROM Ejemplar e"),
    @NamedQuery(name = "Ejemplar.findByIdEjemplar", query = "SELECT e FROM Ejemplar e WHERE e.idEjemplar = :idEjemplar"),
    @NamedQuery(name = "Ejemplar.findByEstado", query = "SELECT e FROM Ejemplar e WHERE e.estado = :estado"),
    @NamedQuery(name = "Ejemplar.findByPrecio", query = "SELECT e FROM Ejemplar e WHERE e.precio = :precio"),
    @NamedQuery(name = "Ejemplar.findByFechaVencimiento", query = "SELECT e FROM Ejemplar e WHERE e.fechaVencimiento = :fechaVencimiento"),
    @NamedQuery(name = "Ejemplar.findByFechaPrestamo", query = "SELECT e FROM Ejemplar e WHERE e.fechaPrestamo = :fechaPrestamo")})
public class Ejemplar implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idEjemplar")
    private Integer idEjemplar;
    @Column(name = "estado")
    private String estado;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "precio")
    private Double precio;
    @Column(name = "fechaVencimiento")
    @Temporal(TemporalType.DATE)
    private Date fechaVencimiento;
    @Column(name = "fechaPrestamo")
    @Temporal(TemporalType.DATE)
    private Date fechaPrestamo;
    @JoinColumn(name = "Pedido_idPedido", referencedColumnName = "idPedido")
    @ManyToOne(optional = false)
    private Pedido pedidoidPedido;
    @JoinColumn(name = "Pelicula_idPelicula", referencedColumnName = "idPelicula")
    @ManyToOne(optional = false)
    private Pelicula peliculaidPelicula;

    public Ejemplar() {
    }

    public Ejemplar(Integer idEjemplar) {
        this.idEjemplar = idEjemplar;
    }

    public Integer getIdEjemplar() {
        return idEjemplar;
    }

    public void setIdEjemplar(Integer idEjemplar) {
        this.idEjemplar = idEjemplar;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public Date getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(Date fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    public Date getFechaPrestamo() {
        return fechaPrestamo;
    }

    public void setFechaPrestamo(Date fechaPrestamo) {
        this.fechaPrestamo = fechaPrestamo;
    }

    public Pedido getPedidoidPedido() {
        return pedidoidPedido;
    }

    public void setPedidoidPedido(Pedido pedidoidPedido) {
        this.pedidoidPedido = pedidoidPedido;
    }

    public Pelicula getPeliculaidPelicula() {
        return peliculaidPelicula;
    }

    public void setPeliculaidPelicula(Pelicula peliculaidPelicula) {
        this.peliculaidPelicula = peliculaidPelicula;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idEjemplar != null ? idEjemplar.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Ejemplar)) {
            return false;
        }
        Ejemplar other = (Ejemplar) object;
        if ((this.idEjemplar == null && other.idEjemplar != null) || (this.idEjemplar != null && !this.idEjemplar.equals(other.idEjemplar))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "pe.edu.upc.evolucion.cinemaxdac.entity.Ejemplar[ idEjemplar=" + idEjemplar + " ]";
    }
    
}
