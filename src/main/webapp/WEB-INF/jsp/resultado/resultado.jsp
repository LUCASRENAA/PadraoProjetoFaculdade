<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <title>Jogo do bixo</title>
</head>

<body>
    <nav id="menu-horizontal">
        <ul>

            <li><a href="/home">Home</a></li>
            <li><a href="/sorteio">Sorteio</a></li>
            <li><a href="/index">Ultimos jogos</a></li>
            <li>
                <h3>JOGO DO BIXO</h3>
            </li>
        </ul>
    </nav>

    <main>
      
          <c:forEach items="${resultados}" var="item">
          		        <h1>Resultado</h1>
          
            <table>
            <tr>
                <th>Posição</th>
                <th>Resultado  <a href="/resultado/${item.id}">${item.id}</a> </th>
            </tr>
            
			<tr>
							
			                <td>1º</td>
		
				<td>${item.resultado1}</td>
				
				
					</tr>
					<tr>
							
			                <td>2º</td>
		
				<td>${item.resultado2}</td>
				
				
					</tr><tr>
							
			                <td>3º</td>
		
				<td>${item.resultado3}</td>
				
				
					</tr><tr>
							
			                <td>4º</td>
		
				<td>${item.resultado4}</td>
				
				
					</tr><tr>
							
			                <td>5º</td>
		
				<td>${item.resultado5}</td>
				
				
					</tr>
		        </table>
		        
		<p></p>
		</c:forEach>
    </main>

    <footer>

    </footer>
</body>

</html>

