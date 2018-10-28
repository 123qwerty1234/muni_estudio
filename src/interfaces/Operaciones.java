package interfaces;


import java.util.List;

public interface Operaciones<x> {
	
	public boolean crear(x obj);
	public boolean modificar(x obj);
	public boolean eliminar(Object obj);
	public List<x> leer();
	public List<x> filtrar(String campo, String criterio);
	

}
