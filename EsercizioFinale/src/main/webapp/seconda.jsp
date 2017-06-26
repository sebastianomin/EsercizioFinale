<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Verifica dei dati inseriti</h1>
<% String nome=request.getParameter("nome") ;
String cognome=request.getParameter("cognome") ;
String datadinascita=request.getParameter("datadinascita") ;
String comune =request.getParameter("comune");
String sesso=request.getParameter("sesso") ;
if(nome==null||cognome==null||datadinascita==null||sesso==null){
%>
<p>ERRORE: torna alla <a href="NewFile.jsp"> pagina di registrazione</a></p>
<%}
else{%>
<h2>Codice fiscale inserito</h2>
<li>Nome:<%=nome %></li>
<li>Cogome:<%=cognome %></li>
<li>Data di nascita:<%=datadinascita %></li>
<li>Comune di nascita:<%=comune %></li>
<li>Sesso:<%=sesso %></li>
<% }%>
	



</body>
</html>