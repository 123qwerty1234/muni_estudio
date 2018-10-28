package dto;

public class RecintosDTO {
	
	public int can_id;
	public String can_nombre;
	public String can_fecha_disp;
	public int can_numero_cancha;
	public String rec_hora_disp;
	public int ubicaciones_ubi_id;
	public int tprec_TipoRecintos_idtprec_TipoRecintos;
	public int estrec_EstadoRecintos_idestrec_EstadoRecintos;
	
	public RecintosDTO() {
		
	}
 
	public RecintosDTO(int can_id, int estrec_EstadoRecintos_idestrec_EstadoRecintos) {
		this.can_id = can_id;
		this.estrec_EstadoRecintos_idestrec_EstadoRecintos = estrec_EstadoRecintos_idestrec_EstadoRecintos;
	}

	public RecintosDTO(int can_id, String can_nombre, String can_fecha_disp, int can_numero_cancha,
			String rec_hora_disp, int ubicaciones_ubi_id, int tprec_TipoRecintos_idtprec_TipoRecintos,
			int estrec_EstadoRecintos_idestrec_EstadoRecintos) {
		this.can_id = can_id;
		this.can_nombre = can_nombre;
		this.can_fecha_disp = can_fecha_disp;
		this.can_numero_cancha = can_numero_cancha;
		this.rec_hora_disp = rec_hora_disp;
		this.ubicaciones_ubi_id = ubicaciones_ubi_id;
		this.tprec_TipoRecintos_idtprec_TipoRecintos = tprec_TipoRecintos_idtprec_TipoRecintos;
		this.estrec_EstadoRecintos_idestrec_EstadoRecintos = estrec_EstadoRecintos_idestrec_EstadoRecintos;
	}

	public int getCan_id() {
		return can_id;
	}

	public void setCan_id(int can_id) {
		this.can_id = can_id;
	}

	public String getCan_nombre() {
		return can_nombre;
	}

	public void setCan_nombre(String can_nombre) {
		this.can_nombre = can_nombre;
	}

	public String getCan_fecha_disp() {
		return can_fecha_disp;
	}

	public void setCan_fecha_disp(String can_fecha_disp) {
		this.can_fecha_disp = can_fecha_disp;
	}

	public int getCan_numero_cancha() {
		return can_numero_cancha;
	}

	public void setCan_numero_cancha(int can_numero_cancha) {
		this.can_numero_cancha = can_numero_cancha;
	}

	public String getRec_hora_disp() {
		return rec_hora_disp;
	}

	public void setRec_hora_disp(String rec_hora_disp) {
		this.rec_hora_disp = rec_hora_disp;
	}

	public int getUbicaciones_ubi_id() {
		return ubicaciones_ubi_id;
	}

	public void setUbicaciones_ubi_id(int ubicaciones_ubi_id) {
		this.ubicaciones_ubi_id = ubicaciones_ubi_id;
	}

	public int getTprec_TipoRecintos_idtprec_TipoRecintos() {
		return tprec_TipoRecintos_idtprec_TipoRecintos;
	}

	public void setTprec_TipoRecintos_idtprec_TipoRecintos(int tprec_TipoRecintos_idtprec_TipoRecintos) {
		this.tprec_TipoRecintos_idtprec_TipoRecintos = tprec_TipoRecintos_idtprec_TipoRecintos;
	}

	public int getEstrec_EstadoRecintos_idestrec_EstadoRecintos() {
		return estrec_EstadoRecintos_idestrec_EstadoRecintos;
	}

	public void setEstrec_EstadoRecintos_idestrec_EstadoRecintos(int estrec_EstadoRecintos_idestrec_EstadoRecintos) {
		this.estrec_EstadoRecintos_idestrec_EstadoRecintos = estrec_EstadoRecintos_idestrec_EstadoRecintos;
	}

}
