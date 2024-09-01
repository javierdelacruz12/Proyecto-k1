package examples.Model;

import javax.xml.bind.annotation.XmlRootElement;
@XmlRootElement
public class Usuario {
    private String identificador;
    private String nombre;
    private int edad;

    public String getIdentificador() {
        return identificador;
    }
    public void setIdentificador(String identificador) {
        this.identificador = identificador;
    }
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public int getEdad() {
        return edad;
    }
    public void setEdad(int edad) {
        this.edad = edad;
    }
}
