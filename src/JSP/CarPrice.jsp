<%
/**
This file should be moved to this location for production:
/webapps/KBB/jsp/CarPrice.jsp
*/
%>
<html>

<jsp:useBean id="cart" scope="session" class="adapter.BuildAuto" />

<jsp:setProperty name="cart" property="*" />
<%
	//cart.processRequest(request);
%>


<FONT size=5 COLOR="#CC0000"> <br> You have the following
	items in your cart:
	<ol>
		<%
			//String[] items = cart.getItems();
			//for (int i = 0; i < items.length; i++) {
		%>
		<li>
			<%
				//out.print(util.HTMLFilter.filter(items[i]));
			%> <%
 	//}
 %>
		
	</ol>

</FONT>

</html>
