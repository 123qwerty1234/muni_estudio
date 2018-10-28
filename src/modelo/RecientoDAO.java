package modelo;
import interfaces.Operaciones;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import conexion.Conexion;
import dto.RecintosDTO;


public class RecientoDAO implements Operaciones<RecintosDTO> {
	
	private static final String SQL_LEER ="SELECT * FROM rec_recintos WHERE estrec_EstadoRecintos_idestrec_EstadoRecintos = 1";
	private static final String SQL_INSERT = "INSERT INTO rec_recintos VALUES (?,?,?,?,?,?,?,?)";
	private static final String SQL_UPDATE="UPDATE rec_recintos SET estrec_EstadoRecintos_idestrec_EstadoRecintos = ? WHERE rec_recintos.can_id = ?";
	public static final Conexion con = Conexion.saberEstado();
	
	@Override
	public boolean crear(RecintosDTO obj) {
		PreparedStatement pst;
		try {
				pst = con.getCnn().prepareStatement(SQL_INSERT);
				pst.setString(2, obj.getCan_nombre());
				pst.setString(3, obj.getCan_fecha_disp());
				pst.setInt(4, obj.getCan_numero_cancha());
				pst.setString(3, obj.getRec_hora_disp());
				pst.setInt(5, obj.getUbicaciones_ubi_id());
				pst.setInt(6, obj.getTprec_TipoRecintos_idtprec_TipoRecintos());
				pst.setInt(7, obj.getEstrec_EstadoRecintos_idestrec_EstadoRecintos());
				pst.setInt(1, obj.getCan_id());
				if(pst.executeUpdate() > 0){
					return true;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				con.cerrarConexion();
			}
			return false;
	}
	
	@Override
	public boolean modificar(RecintosDTO obj) {
		PreparedStatement pst;
		try {
				pst = con.getCnn().prepareStatement(SQL_UPDATE);
				pst.setInt(1, obj.getEstrec_EstadoRecintos_idestrec_EstadoRecintos());
				pst.setInt(2, obj.getCan_id());
				if(pst.executeUpdate() > 0) {
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
	public boolean eliminar(Object obj) {
		return false;
	}

	@Override
	public List<RecintosDTO> leer() {
		List<RecintosDTO> datos = new ArrayList<>();
		PreparedStatement pst;
		ResultSet rs;
		try {
			 pst = con.getCnn().prepareStatement(SQL_LEER);
			 rs = pst.executeQuery();
			 while(rs.next()) {
				datos.add(new RecintosDTO(rs.getInt("can_id"),
										  rs.getString("can_nombre"),
										  rs.getString("can_fecha_disp"),
										  rs.getInt("can_numero_cancha"),
										  rs.getString("rec_hora_disp"),
										  rs.getInt("ubicaciones_ubi_id"),
										  rs.getInt("tprec_TipoRecintos_idtprec_TipoRecintos"),
										  rs.getInt("estrec_EstadoRecintos_idestrec_EstadoRecintos")));
			 }
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			con.cerrarConexion();
		}
		return datos;
		
	}
		

	@Override
	public List<RecintosDTO> filtrar(String campo, String criterio) {
		// TODO Auto-generated method stub
		return null;
	}

}
	
