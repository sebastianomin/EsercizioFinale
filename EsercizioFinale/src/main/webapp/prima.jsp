<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello</title>
</head>
<body>
<p> Inserisci i tuoi dati nei campi sottostanti:</p>
<form action="Hello" >
<p>Nome: <input type="text" name="nome"/></label></p>
<p>Cognome: <input type="text" name="cognome"/></p>
<p>Data di nascita (formato gg/mm/aaaa): <input type="text" name="dataNascita"/></p>
<p>Comune di nascita:<input type="text" name="comuneNascita"/></p>
<p>Sesso: M<input type="radio" name="sesso" value="M"/>
          F<input type="radio" name="sesso" value="F"/></p>

<p> <input type="submit"value="Invia"/></p>
</form>



</body>
</html>