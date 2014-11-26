package Beans;

/**
 *
 * @author David
 */
public class Usuario {
    private String usuario;
    private String permiso;
    public Usuario()  {
        
    }
    public Usuario(String usuario, String permiso) {
        this.usuario = usuario;
        this.permiso = permiso;
    }
    
    public String getUsuario(){
        return usuario;
    }
    public void setUsuario(String user){
        usuario = user;
    }
    public String getPermiso(){
        return permiso;
    }
    public void setPermiso(String per){
        permiso = per;
    }
}
