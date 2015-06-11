<%@ page import="com.aem6solutions.project.core.HelloService" %>
<%@include file="/libs/foundation/global.jsp" %>
<%@page session="false" %>

<div class="clearFix"></div>
<cq:include path="HeroCarouselContainerParsys" resourceType="foundation/components/parsys"/>

This is the Index Page for the Project. <br/>

<c:set var="nameService" value="<%=sling.getService(HelloService.class)%>"/>
<br/>REPO NAME IS  ${nameService.repositoryName}
<%--<i>Name of Author is <u>${nameService.authorName}</u> and Gender is <u>${nameService.authorGender}</u></i>--%>
