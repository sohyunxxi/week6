<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%
    //jsp 코드 작성 영역
    
    request.setCharacterEncoding("utf-8");
    //request는 전 페이지를 의미.
    //setCharacterEncoding은 전 페이지에서 보내준 데이터에 대해서 
    //인코딩을 한글로 설정하겠다는 뜻.
    String data = request.getParameter("data");
    //앞 페이지에서 보내준 값을 변수에 저장할 수 있음.
    //전 페이지에서 보내준 데이터를 저장.


%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>메인 페이지임</h1>ㅛㅛ
    <h2>받아온 값 : <%=data%> </h2>

</body>