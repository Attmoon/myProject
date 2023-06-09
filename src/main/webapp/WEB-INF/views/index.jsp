<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
let num = 1;
let table = "<table border='1'>";

    for(var i=1; i<=10; i++){
        table += "<tr>";
        
        for(var j=1; j<=10; j++){
            table += "<td>"+ num +"</td>";
            num++;
        }

        table += "</tr>";
    }
    table += "</table>";

document.write(table)
</script>
</head>
<body>
</body>
</html>