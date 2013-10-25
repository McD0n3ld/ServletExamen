<%@ page session="true" import="java.util.*, compras.entradas"%>
<%
	Vector buylist = (Vector) session.getValue("compras.shoppingcart");
	if (buylist != null && (buylist.size() > 0)) {
%>
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
			for (int index = 0; index < buylist.size(); index++) {
					entradas anOrder = (entradas) buylist.elementAt(index);
		%>
		<tr>
			<td><b><%=anOrder.getCantidad()%></b></td>
			<td><b><%=anOrder.getNombre_concierto()%></b></td>
			<td><b><%=anOrder.isEstado()%></b></td>
			<td><b><%=anOrder.getTipo()%></b></td>
			<td>
				<form name="deleteForm" action="/ServletConcierto/ComprarEntradas"
					method="POST">
					<input type="submit" value="Delete"> <input type="hidden"
						name="delindex" value='<%=index%>'> <input type="hidden"
						name="action" value="DELETE">
				</form>
			</td>
		</tr>
		<%
			}
		%>
	</table>
	<p>
	<form name="checkoutForm" action="/ServletConcierto/ComprarEntradas"
		method="POST">
		<input type="hidden" name="action" value="CHECKOUT"> <input
			type="submit" name="Checkout" value="Checkout">
	</form>
</center>
<%
	}
%>