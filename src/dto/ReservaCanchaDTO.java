package dto;

public class ReservaCanchaDTO {
	
	public int res_can_id;
	public String res_can_fecha_reserva;
	public String res_can_hora_reserva_inicio;
	public int Canchas_can_id;
	public int estadoReservas_est_res_id;
	public String Usuarios_usu_run;
	public String res_can_numero; 
	
	
	
	public ReservaCanchaDTO() {
		
	}

	
	

	public ReservaCanchaDTO(String res_can_fecha_reserva, String res_can_hora_reserva_inicio, int canchas_can_id,
			int estadoReservas_est_res_id, String usuarios_usu_run, String res_can_numero) {
		super();
		this.res_can_fecha_reserva = res_can_fecha_reserva;
		this.res_can_hora_reserva_inicio = res_can_hora_reserva_inicio;
		Canchas_can_id = canchas_can_id;
		this.estadoReservas_est_res_id = estadoReservas_est_res_id;
		Usuarios_usu_run = usuarios_usu_run;
		this.res_can_numero = res_can_numero;
	}




	public ReservaCanchaDTO(int res_can_id, String res_can_fecha_reserva, String res_can_hora_reserva_inicio,
			int canchas_can_id, int estadoReservas_est_res_id, String usuarios_usu_run, String res_can_numero) {
		super();
		this.res_can_id = res_can_id;
		this.res_can_fecha_reserva = res_can_fecha_reserva;
		this.res_can_hora_reserva_inicio = res_can_hora_reserva_inicio;
		Canchas_can_id = canchas_can_id;
		this.estadoReservas_est_res_id = estadoReservas_est_res_id;
		Usuarios_usu_run = usuarios_usu_run;
		this.res_can_numero = res_can_numero;
	}




	public int getRes_can_id() {
		return res_can_id;
	}




	public void setRes_can_id(int res_can_id) {
		this.res_can_id = res_can_id;
	}




	public String getRes_can_fecha_reserva() {
		return res_can_fecha_reserva;
	}




	public void setRes_can_fecha_reserva(String res_can_fecha_reserva) {
		this.res_can_fecha_reserva = res_can_fecha_reserva;
	}




	public String getRes_can_hora_reserva_inicio() {
		return res_can_hora_reserva_inicio;
	}




	public void setRes_can_hora_reserva_inicio(String res_can_hora_reserva_inicio) {
		this.res_can_hora_reserva_inicio = res_can_hora_reserva_inicio;
	}




	public int getCanchas_can_id() {
		return Canchas_can_id;
	}




	public void setCanchas_can_id(int canchas_can_id) {
		Canchas_can_id = canchas_can_id;
	}




	public int getEstadoReservas_est_res_id() {
		return estadoReservas_est_res_id;
	}




	public void setEstadoReservas_est_res_id(int estadoReservas_est_res_id) {
		this.estadoReservas_est_res_id = estadoReservas_est_res_id;
	}




	public String getUsuarios_usu_run() {
		return Usuarios_usu_run;
	}




	public void setUsuarios_usu_run(String usuarios_usu_run) {
		Usuarios_usu_run = usuarios_usu_run;
	}




	public String getRes_can_numero() {
		return res_can_numero;
	}




	public void setRes_can_numero(String res_can_numero) {
		this.res_can_numero = res_can_numero;
	}
	
	

	



	
	





}