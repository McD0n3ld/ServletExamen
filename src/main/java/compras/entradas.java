package compras;

public class entradas {
	private int id_entrada;
	private String nombre_concierto;
	private boolean estado;
	private String tipo;
	private int cantidad;
	private float precio;
	
	

	public int getId_entrada() {
		return id_entrada;
	}

	public void setId_entrada(int id_entrada) {
		this.id_entrada = id_entrada;
	}

	public String getNombre_concierto() {
		return nombre_concierto;
	}

	public void setNombre_concierto(String nombre_concierto) {
		this.nombre_concierto = nombre_concierto;
	}

	public boolean isEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public float getPrecio() {
		return precio;
	}

	public void setPrecio(float precio) {
		this.precio = precio;
	}

}
