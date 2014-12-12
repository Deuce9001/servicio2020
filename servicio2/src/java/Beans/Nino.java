package Beans;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 *
 * @author David
 */
public class Nino {
    private int id;
    public int edad;
    private String nombre;
    private Date fecha_nac;
    private String sexo;
    private String direccion;
    private int telefono;
    private String grado_escolar;
    private String programa;
    private String alergias;
    
    public Nino() {
        
    }
    public Nino(int id, int edad, String nombre, Date fecha_nac, String sexo, String direccion, int telefono, String grado_escolar, String programa, String alergias) {
        this.id = id;
        this.edad = edad;
        this.nombre = nombre;
        this.fecha_nac = fecha_nac;
        this.direccion = direccion;
        this.sexo = sexo;
        this.telefono = telefono;
        this.grado_escolar = grado_escolar;
        this.programa = programa;
        this.alergias = alergias;
        
    }
    
    public int getId() {
        return id;
    }
    public void setId(int i) {
        id = i;
    }
    
    public int getEdad() {
        java.util.Date date = new java.util.Date();
        java.util.Date fecha_nac = new java.util.Date(2004, 14, 12);
        DateFormat dd = new SimpleDateFormat("dd");
        DateFormat MM = new SimpleDateFormat("MM");
        DateFormat yyyy = new SimpleDateFormat("yyyy");
        int dia_nac = Integer.parseInt(dd.format(fecha_nac));
        int mes_nac = Integer.parseInt(MM.format(fecha_nac));
        int anio_nac = Integer.parseInt(yyyy.format(fecha_nac));
        int dia = Integer.parseInt(dd.format(date));
        int mes = Integer.parseInt(MM.format(date));
        int anio = Integer.parseInt(yyyy.format(date));
        System.out.println(anio_nac);
        System.out.println(anio);
        int edad = anio - anio_nac;
        if(mes_nac>mes) {
            edad -= 1;
        } else {
            if(dia_nac>dia){
                    edad -= 1;
            } else {
            }
        }
        return edad;
    }
    public void setEdad(java.util.Date fecha_nac) {
        java.util.Date date = new java.util.Date();
        fecha_nac = new java.util.Date(2004, 14, 12);
        DateFormat dd = new SimpleDateFormat("dd");
        DateFormat MM = new SimpleDateFormat("MM");
        DateFormat yyyy = new SimpleDateFormat("yyyy");
        int dia_nac = Integer.parseInt(dd.format(fecha_nac));
        int mes_nac = Integer.parseInt(MM.format(fecha_nac));
        int anio_nac = Integer.parseInt(yyyy.format(fecha_nac));
        int dia = Integer.parseInt(dd.format(date));
        int mes = Integer.parseInt(MM.format(date));
        int anio = Integer.parseInt(yyyy.format(date));
        System.out.println(anio_nac);
        System.out.println(anio);
        int edad = anio - anio_nac;
        if(mes_nac>mes) {
            edad -= 1;
        } else {
            if(dia_nac>dia){
                    edad -= 1;
            } else {
            }
        }
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
    
}
