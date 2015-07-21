<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html ng-app="townbookApp">
<head>
  <title><tiles:getAsString name="title"/></title>
  <tiles:insertAttribute name="header" />
</head>

<body>
  <tiles:insertAttribute name="navigation" />
  <tiles:insertAttribute name="body" />
  <tiles:insertAttribute name="footer" />
  <tiles:insertAttribute name="controllers" />
</body>
</html>
