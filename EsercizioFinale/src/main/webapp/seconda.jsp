<%@page import="EsercizioFinale.Utente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello</title>
</head>
<body>
<h1>Verifica dei dati inseriti</h1>
<% Utente u=new Utente();
String nome=request.getParameter("nome") ;
String cognome=request.getParameter("cognome") ;
String dataNascita=request.getParameter("dataNascita") ;
String comuneNascita =request.getParameter("comuneNascita");
String sesso=request.getParameter("sesso") ;
if(nome==null||cognome==null||dataNascita==null||sesso==null){
%>
<p>ERRORE: torna alla <a href="prima.jsp"> pagina di registrazione</a></p>
<%}
else{%>
<h2>Codice fiscale inserito: </h2>
<li>Nome:<%=nome %></li>
<li>Cogome:<%=cognome %></li>
<li>Data di nascita:<%=dataNascita %></li>
<li>Comune di nascita:<%=comuneNascita %></li>
<li>Sesso:<%=sesso %></li>

<li>Codice Fiscale:<%=u.calcolaCF(nome, cognome, dataNascita, comuneNascita, sesso) %></li>
<% }%>
	



</body>
</html>