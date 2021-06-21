package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CompraDAO {
    
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r = 0;
    
    public int GenerarCompra(Compras compra){
        int idcompras;
        String sql = "insert into compras(idCliente,idPago,FechaCompras,Monto,Estado) values(?,?,?,?,?)";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, compra.getCliente().getId());
            ps.setInt(2, compra.getIdpago());
            ps.setString(3, compra.getFecha());
            ps.setDouble(4, compra.getMonto());
            ps.setString(5, compra.getEstado());
            r=ps.executeUpdate();
            
            sql = "Select @@IDENTITY AS IdCompras";
            rs=ps.executeQuery(sql);
            rs.next();
            idcompras=rs.getInt("idCompras");
            rs.close();
            
            for (Carrito detalle : compra.getDetallecompras()) {
                sql = "insert into detalle_compras(idProducto,idCompras,Cantidad,PrecioCompra) values(?,?,?,?)";
                ps=con.prepareStatement(sql);
                ps.setInt(1, detalle.getIdProducto());
                ps.setInt(2, idcompras);
                ps.setInt(3, detalle.getCantidad());
                ps.setDouble(4, detalle.getPrecio());
                r=ps.executeUpdate();
            }
            
        }catch(Exception e){}
        return r;
    }
    
}
