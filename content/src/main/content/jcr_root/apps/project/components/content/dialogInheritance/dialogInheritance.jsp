<%@page session="false"%>
<%@ page import="com.havells.core.model.CompareList, com.adobe.cq.commerce.api.CommerceService
                ,com.adobe.cq.commerce.api.CommerceSession,com.havells.core.model.product.ProductDetails" %>
<%@ page import="com.havells.core.model.product.ProductConstant" %>
<%@ page import="java.util.List" %>
<%@ page import="com.adobe.cq.commerce.api.Product" %>
<%@include file="/apps/havells/global.jsp"%>
<%
    try{
        CommerceService commerceService = resource.adaptTo(CommerceService.class);
        CommerceSession session = commerceService.login(slingRequest, slingResponse);
        CompareList compareList = new CompareList(resource, request);
        List<Product> list = compareList.getProducts();
        %>
        <c:set var="compareProdcuts" value="<%=compareList%>"/>
    <div class="compareWrap">
        <h1>Compare <span> products</span></h1>
        <div class="tableScrollWrapper">
            <div class="compare">
                <%if(list.size() > 0){%>
                    <table cellspacing="0" cellpadding="0">
                        <tbody>
                        <tr>
                                <td>&nbsp;</td>
                            <%

                                for(Product product : list){
                            %>
                                <td>
                                    <div class="compareImage">
                                    <div class="compareName">
                                        <a href="<%=product.getPagePath()%>"><%=product.getTitle()%></a>
                                    </div>
                                    <img src="<%=product.getImage().getSrc()%>"></div>
                                </td>
                            <%
                                }
                            %>
                        </tr>
                        <tr>
                            <td>Price</td>
                            <%
                                for(Product product : list){
                                    final String productPrice = session.getProductPrice(product);
                            %>
                            <td><%=productPrice%></td>
                            <%}%>
                        </tr>
                        <tr>
                            <td>Warranty</td>
                            <%
                                for(Product product : list){
                            %>
                            <td>No Warranty</td>
                            <%}%>
                        </tr>
                        <tr>
                            <th scope="col" colspan="4">General Features</th>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        <%
                            for(Product product : list){
                        %>
                            <td><%= product.getDescription() %></td>
                        <%}%>
                        </tr>
                        </tbody>
                    <%}else{%>
                        <b>No Data found </b>
                      <%}%>
                </table>
            </div>
        </div>
    </div>
<%}catch (Exception ex){

}%>
