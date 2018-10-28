package modelo;


import java.util.ArrayList;
import java.util.List;


import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conexion.Conexion;
import dto.RecintosDTO;
import dto.ReservaCanchaDTO;
import interfaces.Operaciones;

public class ReservaCanchaDAO implements Operaciones<ReservaCanchaDTO> {
	
	private static final String SQL_INSERT = "INSERT INTO res_reservacanchas VALUES (?,?,?,?,?,?,?)";
	private static final String SQL_LEER = "SELECT * FROM res_reservacanchas";
	
	public static final Conexion con = Conexion.saberEstado();
	


	@Override
	public boolean crear(ReservaCanchaDTO obj) {
				
		PreparedStatement pst;
		
		try {
			pst = con.getCnn().prepareStatement(SQL_INSERT);
			
			pst.setInt(1, obj.getRes_can_id());
			pst.setString(2, obj.getRes_can_fecha_reserva());
			pst.setString(3, obj.getRes_can_hora_reserva_inicio());
			pst.setInt(4, obj.getCanchas_can_id());
			pst.setInt(5, obj.getEstadoReservas_est_res_id());
			pst.setString(6, obj.getUsuarios_usu_run());
			pst.setString(7, obj.getRes_can_numero());
			
			if(pst.executeUpdate() > 0){
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			con.cerrarConexion();
		}
		
		return false;
	}

	@Override
	public boolean modificar(ReservaCanchaDTO obj) {
	
		return false;
	}

	@Override
	public boolean eliminar(Object obj) {
		
		return false;
	}

	@Override
	public List<ReservaCanchaDTO> leer() {
		List<ReservaCanchaDTO> datos = new ArrayList<>();
		PreparedStatement pst;
		ResultSet rs;
		try {
			 pst = con.getCnn().prepareStatement(SQL_LEER);
			 rs = pst.executeQuery();
			 while(rs.next()) {
				 datos.add(new ReservaCanchaDTO(rs.getInt("res_can_id"),
						 					    rs.getString("res_can_fecha_reserva"),
						 					    rs.getString("res_can_hora_reserva_inicio"),
						 					    rs.getInt("Canchas_can_id"),
						 					    rs.getInt("estadoReservas_est_res_id"),
						 					    rs.getString("Usuarios_usu_run"),
						 					    rs.getString("res_can_numero")));
			 }
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			con.cerrarConexion();
		}
		return datos;
	}

	@Override
	public List<ReservaCanchaDTO> filtrar(String campo, String criterio) {
		
		
		return null;
		
			
		}
	
	
	
	



}