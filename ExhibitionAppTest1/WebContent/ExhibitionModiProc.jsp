<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/Header.jsp"%>
<%
// 현재 파일명 : ExhibitionModiProc.jsp

/*
이전 페이지에서 request로 
모든 정보 받아오기!
*/

String exidx = request.getParameter("exidx");
String extitle = request.getParameter("extitle");
String genre = request.getParameter("genre");
String author = request.getParameter("author");
String rating  = request.getParameter("rating");
String texts = request.getParameter("texts");
String placename = request.getParameter("placename");
int exprice = Integer.parseInt(request.getParameter("exprice"));
String sdate  = request.getParameter("sdate");
String edate = request.getParameter("edate");
String docent = request.getParameter("docent");

// 그냥한번 해봅시다

String sql = "update exhibition set ";
sql+=" extitle = ?, genre = ?, author=?, rating=?,texts=?,placename=?, exprice=?,sdate=?,edate=?,docent=?";
sql+=" where exidx = ?";

pstmt = conn.prepareStatement(sql);
pstmt.setString(1, extitle);
pstmt.setString(2, genre);
pstmt.setString(3, author);
pstmt.setString(4, rating);
pstmt.setString(5, texts);
pstmt.setString(6, placename);
pstmt.setInt(7, exprice);
pstmt.setString(8, sdate);
pstmt.setString(9, edate);
pstmt.setString(10, docent);
pstmt.setString(11, exidx);

int rs1 = pstmt.executeUpdate();
if(rs1 >0){
	out.println("");
}



%>