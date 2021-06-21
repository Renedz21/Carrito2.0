package modelo;

public class Carrito {
    
    int item;
    int idProducto;
    String nombre;
    String desripcion;
    double precio;
    int cantidad;
    double subTotal;

    public Carrito() {
    }

    public Carrito(int item, int idProducto, String nombre, String desripcion, double precio, int cantidad, double subTotal) {
        this.item = item;
        this.idProducto = idProducto;
        this.nombre = nombre;
        this.desripcion = desripcion;
        this.precio = precio;
        this.cantidad = cantidad;
        this.subTotal = subTotal;
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDesripcion() {
        return desripcion;
    }

    public void setDesripcion(String desripcion) {
        this.desripcion = desripcion;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }
    
    
}
