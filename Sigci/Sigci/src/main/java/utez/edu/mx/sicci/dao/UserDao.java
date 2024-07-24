package utez.edu.mx.sicci.dao;

import utez.edu.mx.sicci.model.Materia;
import utez.edu.mx.sicci.model.User;
import utez.edu.mx.sicci.utils.DatabaseConnectionManager;

import javax.xml.crypto.Data;
import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;


public class UserDao {
    private static final String SELECT_ALL_USERS = "SELECT * FROM usuario where idtipo_usuario = 2";


    // Encontrar el usuario a partir del correo
    public User getOne(String correo, String pass){
        User u = new User();
        //Los simbolos ? son para evitar la inyección de código SQL
        String query = "select * from usuario where email = ? and password = ?";

        try{
            //Conectarme a la base de datos
            Connection con = DatabaseConnectionManager.getConnection();
            //Me prepara la consulta para ser ejecutada
            PreparedStatement ps = con.prepareStatement(query);
            //Voy a definir los parametros del query (los "?")
            ps.setString(1 , correo);
            ps.setString(2 , pass);
            //Ejecutar la consulta
            ResultSet rs = ps.executeQuery();
            //Obtener la información del ResultSet
            if(rs.next()){
                //Que el usuario si exite en la base de datos
                u.setId(rs.getInt("id_usuario"));
                u.setNombre(rs.getString("nombre"));
                u.setApellido(rs.getString("apellidos"));
                u.setCorreo(rs.getString("email"));
                u.setPass(rs.getString("password"));
                u.setEstadoPass(rs.getString("estado_password"));
                u.setEstadoUsuario(rs.getInt("estado_usuario"));
                u.setNombreUsuario(rs.getString("nombre_usuario"));
                u.setFechaCreacion(rs.getString("fecha_creacion"));
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        return u;
    }


    public boolean insert(User user){
        boolean flag = false;
        String query = "INSERT INTO usuario(nombre,apellidos,email,curp, fecha_nacimiento, password, estado_password,estado_usuario,nombre_usuario,fecha_creacion, idtipo_usuario,id_division) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?);";
        try {
            LocalDateTime fechaHora = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            String fechaHoraFormatted = fechaHora.format(formatter);
            Connection con = DatabaseConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,user.getNombre());
            ps.setString(2,user.getApellido());
            ps.setString(3,user.getCorreo());
            ps.setString(4,user.getCurp());
            ps.setString(5,user.getFechaNacimiento());
            ps.setString(6,user.getPass());
            ps.setString(7,"Active");
            ps.setInt(8,1);
            ps.setString(9,user.getNombreUsuario());
            ps.setString(10,fechaHoraFormatted);
            ps.setInt(11,user.getTipoUsuario());
            ps.setInt(12,user.getIdDIvision());

            //ps.setInt(11,user.getIdGrupo());



            if(ps.executeUpdate()==1){
                flag = true; //si se inserto el dato
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return flag;
    }
    public ArrayList<User> getAll() {
        ArrayList<User> usuario = new ArrayList<>();
        try(
            Connection con = DatabaseConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(SELECT_ALL_USERS);
            ResultSet rs = ps.executeQuery()){
            while (rs.next()) { // Iteramos cada fila resultado de la query
                User u = new User();
                u.setId(rs.getInt("id_usuario"));
                u.setNombre(rs.getString("nombre"));
                u.setApellido(rs.getString("apellidos"));
                u.setCorreo(rs.getString("email"));
                u.setCurp(rs.getString("curp"));
                u.setFechaNacimiento(rs.getString("fecha_nacimiento"));
                u.setPass(rs.getString("password"));
                u.setEstadoPass(rs.getString("estado_password"));
                u.setEstadoUsuario(rs.getInt("estado_usuario"));
                u.setNombreUsuario(rs.getString("nombre_usuario"));
                u.setFechaCreacion(rs.getString("fecha_creacion"));
                u.setTipoUsuario(rs.getInt("idtipo_usuario"));
                u.setIdDIvision(rs.getInt("id_division"));
                u.setIdGrupo(rs.getInt("id_grupo"));
                usuario.add(u);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return usuario;
    }



    public boolean update(int id, User user) {
        boolean updated = false;
        String sql = "UPDATE usuario SET nombre = ?, apellidos = ?, correo = ?, curp = ?, fecha_nacimiento = ?, pass = ?, nombre_usuario = ?, idtipo_usuario = ?, id_division = ? WHERE id = ?";
        try (Connection conn = DatabaseConnectionManager.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, user.getNombre());
            ps.setString(2, user.getApellido());
            ps.setString(3, user.getCorreo());
            ps.setString(4, user.getCurp());
            ps.setString(5, user.getFechaNacimiento());
            ps.setString(6, user.getPass());
            ps.setString(7, user.getNombreUsuario());
            ps.setInt(8, user.getTipoUsuario());
            ps.setInt(9, user.getIdDIvision());
            ps.setInt(10, user.getId());
            updated = ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return updated;
    }

    public User findById(int id) {
        User u = null;
        String sql = "SELECT * FROM usuario WHERE id = ?";
        try (Connection conn = DatabaseConnectionManager.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                u = new User();
                u.setId(rs.getInt("id"));
                u.setNombre(rs.getString("nombre"));
                u.setApellido(rs.getString("apellidos"));
                u.setCorreo(rs.getString("correo"));
                u.setCurp(rs.getString("curp"));
                u.setFechaNacimiento(rs.getString("fecha_nacimiento"));
                u.setPass(rs.getString("pass"));
                u.setNombreUsuario(rs.getString("nombre_usuario"));
                u.setTipoUsuario(rs.getInt("idtipo_usuario"));
                u.setIdDIvision(rs.getInt("id_division"));
                // Rellenar otros campos si es necesario
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return u;
    }

    public boolean delete(int id) throws SQLException{
        boolean flag;
        String sql = "update usuario set estado_usuario = 0 where id_usuario = ? ";

        try (Connection con = DatabaseConnectionManager.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1,id);
            flag = ps.executeUpdate()>0;
        }
        return flag;
    }
}
