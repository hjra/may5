<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>    
<%@ page session="true" %>
<table>
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     
      
      <center><td>글쓰기</td></center>
     
     </tr>
    </table>
   <table>
     <tr>
      <td>&nbsp;</td>
      <td align="center">제목</td>
      <td><input name="title" size="56" maxlength="100"></td>
      <td>&nbsp;</td>
     </tr>  
   
     <tr height="1" bgcolor="#dddddd"><td colspan="3"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">내용</td>
      <td><textarea name="memo" cols="50" rows="13"></textarea></td>
      <td>&nbsp;</td>
     </tr>
     
      <tr>
      <td>&nbsp;</td>
      <td align="center">파일첨부</td>
      <td><input name="password" size="55" maxlength="50"></td>
      <td><input type=button value="찾아보기">  
      <td>&nbsp;</td>
     </tr>
     
     
      <tr>
      <td>&nbsp;</td>
      <td align="center">비밀번호</td>
      <td><input name="password" size="5" maxlength="5"></td>
      <td>&nbsp;</td>
     </tr>
     
     
     
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2"><input type=button value="등록">
       <input type=button value="취소">
      <td>&nbsp;</td>
     </tr>
    </table>
	
</form>