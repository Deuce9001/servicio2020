package Beans;

import java.sql.Date;

/**
 *
 * @author David
 */
public class Nino {
    private int id;
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
    public Nino(int id, String nombre, Date fecha_nac, String sexo, String direccion, int telefono, String grado_escolar, String programa, String alergias, String estado) {
        this.id = id;
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
    
    public int getId() {
        return id;
    }
    public void setId(int i) {
        id = i;
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
    public void setFechaNac(Date fecha) {
        fecha_nac = fecha;
    }
    public String getSexo() {
        return sexo;
    }
    public void setSexo(String s) {
        sexo = s;
    }
    public String getDireccion() {
        return direccion;
    }
    public void setDireccion(String dir) {
        direccion = dir;
    }
    public int getTelefono() {
        return telefono;
    }
    public void setTelefono(int tel) {
        telefono = tel;
    }
    public String getGradoEscolar() {
        return grado_escolar;
    }
    public void setGradoEscolar(String escolar) {
        grado_escolar = escolar;
    }
    public String getPrograma() {
        return programa;
    }
    public void setPrograma(String prog) {
        programa = prog;
    } 
    public String getAlergias() {
        return alergias;
    }
    public void setAlergias(String alerg) {
        alergias = alerg;
    }
    public String getEstado() {
        return estado;
    }
    
}
