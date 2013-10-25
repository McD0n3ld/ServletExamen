<%@ page session="true"
	import="java.util.*, compras.entradas, java.sql.*, javax.naming.*, javax.sql.DataSource"%>
<html>
<head>
<title>Comprar entradas</title>
</head>
<body bgcolor="#33CCFF">
	<font face="Times New Roman,Times" size="+3">Comprar entradas </font>
	<hr>
	<p>
	<center>
		<form name="shoppingForm" action="/ServletConcierto/ComprarEntradas"
			method="POST">
			<b>Concierto:</b> <select name=ENTRADA>
				<%
					Context envContext = new InitialContext();
					Context initContext = (Context) envContext.lookup("java:/comp/env");
					DataSource ds = (DataSource) initContext.lookup("jdbc/datasource_conciertos");
					Connection con = ds.getConnection();
					Statement stmt = con.createStatement();
					String query = "SELECT entradas.estado, entradas.id_entrada, conciertos.nombre, entradas.id_tipo FROM entradas INNER JOIN conciertos ON (entradas.id_concierto=conciertos.id_concierto) WHERE entradas.estado=0";
					ResultSet rs = stmt.executeQuery(query);
					while (rs.next()) {
						entradas e = new entradas();
						
						e.setId_entrada(rs.getInt("id_entrada"));
						e.setNombre_concierto(rs.getString("nombre"));
						e.setTipo(rs.getString("id_tipo"));
						%>
						<option>
						<%=e.getId_entrada()%> | 
						<%=e.getNombre_concierto()%> |
						
						<%=e.getTipo() %> |
						</option>
						<%						
					}
				%>
			</select> <b>Cantidad: </b><input type="text" name="cantidad" SIZE="3" value=1>
			<input type="hidden" name="action" value="ADD"> <input
				type="submit" name="Submit" value="Añadir al carro">
		</form>
	</center>
	<p>
		<jsp:include page="carro.jsp" flush="true" />
</body>
</html>