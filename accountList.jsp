<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>

<%-- 데이터베이스 값 가져오기 라이브러리 --%>
<%@ page import="java.sql.ResultSet" %>

<%-- 리스트 라이브러리 --%>
<%@ page import="java.util.ArrayList" %>
<%
    Class.forName("com.mysql.jdbc.Driver");

    // 데이터베이스 연결
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/web","Sohyunxxi","1234");

    //SQL 만들기
    String sql = "SELECT * FROM account";
    PreparedStatement query = connect.prepareStatement(sql);

    // query.executeUpdate();

    ResultSet result = query.executeQuery();

    //데이터 정제
    //1세대는 순차적으로 읽어야 함. -> 오래걸림.
    //array는 크기 정해져 있고, list는 벡터 -> 크기 정해져 있지 않음
    ArrayList<String> idList= new ArrayList<String>();
    ArrayList<String> pwList= new ArrayList<String>();
    
    while(result.next()){ // next가 가능할 때까지 반복문을 돌린다.
        String id=result.getString(1);// 첫번째 컬럼
        String pw=result.getString(2);// 두번째 컬럼
        idList.add("\""+id +"\"");
        pwList.add("\""+pw+"\"");
    }    
%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
   <script>
        var idList= <%=idList%>
        var pwList= <%=pwList%>

        //이제부터 받아온 값을 자유롭게 요리하면 됨.
        //에횽횽....
        console.log(idList)
        console.log(pwList)
        //프론트엔드가 자료형 무시하고 그대로 가져옴 -> 이를 변수라고 인식하게 됨
        //raw data 라고 함. 
   </script>
</body>