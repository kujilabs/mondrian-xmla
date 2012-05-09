<%@ page session="true" pageEncoding="UTF-8" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<!-- 
    * Change uri attribute to your deployment of this webapp.
    * The dataSource attribute is necessary for Mondrian's XMLA.
-->
<jp:xmlaQuery id="query01"
    uri="http://localhost:8080/mondrian/xmla"
    dataSource="Provider=Mondrian;DataSource=MondrianHusky;"
  	catalog="Husky">
  SELECT [Measures].[Scope 1 Carbon]  on COLUMNS,
         [Date] on ROWS
  FROM [Carbon]
</jp:xmlaQuery>

<c:set var="title01" scope="session">Accessing Mondrian By XMLA</c:set>
