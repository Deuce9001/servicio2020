package Beans;

import java.sql.Date;

/**
 *
 * @author David
 */
public class Nino {
    private String nombre;
    private Date fecha_nac;
    private String sexo;
    private String direccion;
    private int telefono;
    private String grado_escolar;
    private String programa;
    private String alergias;
    private String estado;
    
    public Nino() {
        
    }
    public Nino(String nombre, Date fecha_nac, String sexo, String direccion, int telefono, String grado_escolar, String programa, String alergias, String estado) {
        this.nombre = nombre;
        this.fecha_nac = fecha_nac;
        this.direccion = direccion;
        this.sexo = sexo;
        this.telefono = telefono;
        this.grado_escolar = grado_escolar;
        this.programa = programa;
        this.alergias = alergias;
        this.estado = estado;
        
    }
    
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nom) {
        nombre = nom;
    }
    public Date getFechaNac() {
        return fecha_nac;
    }
    
    
}
