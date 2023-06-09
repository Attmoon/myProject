<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        table{
            border-collapse: collapse;
            border-spacing: 0;
        }
        th, td{
            padding: 10px 20px;
            border: 1px solid #000;
        }
    </style>


</head>
<body id="body">
</body>
<script>
let table = document.createElement('table');
let thead = document.createElement('thead');
let tbody = document.createElement('tbody');

table.appendChild(thead);
table.appendChild(tbody);

// Adding the entire table to the body tag
document.getElementById('body').appendChild(table);

//Creating and adding data to first row of the table
let row_1 = document.createElement('tr');
let heading_1 = document.createElement('th');
heading_1.innerHTML = "회원명";
let heading_2 = document.createElement('th');
heading_2.innerHTML = "회원아이디";
let heading_3 = document.createElement('th');
heading_3.innerHTML = "회원폰번호";
let heading_4 = document.createElement('th');
heading_4.innerHTML = "주문번호";
let heading_5 = document.createElement('th');
heading_5.innerHTML = "제품번호";
let heading_6 = document.createElement('th');
heading_6.innerHTML = "제품명";
let heading_7 = document.createElement('th');
heading_7.innerHTML = "사업자명";
let heading_8 = document.createElement('th');
heading_8.innerHTML = "사업자폰";
let heading_9 = document.createElement('th');
heading_9.innerHTML = "사업자주소";
let heading_10 = document.createElement('th');
heading_10.innerHTML = "삭제유무";

row_1.appendChild(heading_1);
row_1.appendChild(heading_2);
row_1.appendChild(heading_3);
row_1.appendChild(heading_4);
row_1.appendChild(heading_5);
row_1.appendChild(heading_6);
row_1.appendChild(heading_7);
row_1.appendChild(heading_8);
row_1.appendChild(heading_9);
row_1.appendChild(heading_10);
thead.appendChild(row_1);


// Creating and adding data to second row of the table
let row_2 = document.createElement('tr');
let row_2_data_1 = document.createElement('td');
row_2_data_1.innerHTML = "${list.MBR_NM}";
let row_2_data_2 = document.createElement('td');
row_2_data_2.innerHTML = "James Clerk";
let row_2_data_3 = document.createElement('td');
row_2_data_3.innerHTML = "Netflix";

row_2.appendChild(row_2_data_1);
row_2.appendChild(row_2_data_2);
row_2.appendChild(row_2_data_3);
tbody.appendChild(row_2);


// Creating and adding data to third row of the table
let row_3 = document.createElement('tr');
let row_3_data_1 = document.createElement('td');
row_3_data_1.innerHTML = "2.";
let row_3_data_2 = document.createElement('td');
row_3_data_2.innerHTML = "Adam White";
let row_3_data_3 = document.createElement('td');
row_3_data_3.innerHTML = "Microsoft";

row_3.appendChild(row_3_data_1);
row_3.appendChild(row_3_data_2);
row_3.appendChild(row_3_data_3);
tbody.appendChild(row_3);
</script>
</html>