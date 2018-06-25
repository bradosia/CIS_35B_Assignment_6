
<%
	/**
	This file should be moved to this location for production:
	/webapps/KBB/jsp/CarPrice.jsp
	*/
%>
<html>

<jsp:useBean id="cart" scope="session" class="JSP.CarPrice" />

<jsp:setProperty name="cart" property="*" />
<%
	cart.processRequest(request);
%>

<html>
<head>
<title>Car Pricing Summary</title>
<style>
body {
	background-color: #f1f1f1;
}

table {
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid black;
}

.center_column {
	background-color: #ffffff;
	max-width: 600px;
	margin: auto;
	padding: 15px
}
</style>
</head>
<body>
	<div class="center_column">
		<h1>Car Pricing Summary</h1>
		<p>Here is what you selected:</p>
		<table>
			<tbody>
				<tr>
					<td>
						<%
							out.print(cart.getAutomobile().getYear());
							out.print(" ");
							out.print(cart.getAutomobile().getMake());
							out.print(" ");
							out.print(cart.getAutomobile().getModel());
						%>
					</td>
					<td>base price</td>
					<td>$<%
						out.print(cart.getAutomobile().getPrice());
					%>
					</td>
				</tr>
				<%
					int i, n;
					n = cart.getAutomobile().length();
					// option set
					for (i = 0; i < n; i++) {
				%>

				<tr>
					<td>
						<%
							out.print(cart.getAutomobile().optionSetName(i));
						%>
					</td>
					<td>
						<%
							out.print(cart.getAutomobile().getOptionSetChoiceName(i));
						%>
					</td>
					<td>
						<%
							out.print(cart.getAutomobile().getOptionSetChoicePrice(i));
						%>
					</td>
				</tr>
				<%
					}
				%>
				<tr class="total_row">
					<td>Total</td>
					<td></td>
					<td>$<%
						out.print(cart.getAutomobile().getChoiceTotalPrice(i));
					%>
					</td>
				</tr>
			</tbody>
		</table>
	</div>


</body>
</html>
