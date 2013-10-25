<%@ page session="true"
	import="java.util.*, compras.entradas"%>
<html>
<head>
<title>Validar compra</title>
</head>
<body bgcolor="#33CCFF">
	<font face="Times New Roman,Times" size=+3> Validar compra </font>
	<hr>
	<p>
	<center>
		<table border="0" cellpadding="0" width="100%" bgcolor="#FFFFFF">
			<tr>
				<td><b>CANTIDAD</b></td>
				<td><b>NOMBRE CONCIERTO</b></td>
				<td><b>ESTADO</b></td>
				<td><b>TIPO</b></td>
				<td></td>
			</tr>
			<%
				Vector buylist = (Vector) session.getValue("compras.shoppingcart");
				String amount = (String) request.getAttribute("amount");
				for (int index = 0; index < buylist.size(); index++) {
					entradas anOrder = (entradas) buylist.elementAt(index);
			%>
			<tr>
				<td><b><%=anOrder.getCantidad()%></b></td>
				<td><b><%=anOrder.getNombre_concierto()%></b></td>
				<td><b><%=anOrder.isEstado()%></b></td>
				<td><b><%=anOrder.getTipo()%></b></td>
			</tr>
			<%
				}
				session.invalidate();
			%>
			<tr>
				<td></td>
				<td></td>
				<td><b>TOTAL</b></td>
				<td><b>$<%=amount%></b></td>
				<td></td>
			</tr>
		</table>
		<p>
			<a href="/ServletConcierto/comprar.jsp">Comprar mas!</a>
	</center>
</body>
</html>