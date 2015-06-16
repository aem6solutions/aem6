<%@include file="global.jsp" %>
<%@page session="false" %>

<cq:include script="clientLibs.jsp"/>

<!doctype html>
<html class="no-js">
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title>AEM 6 Solutions</title>
        <meta name="description" content="">
        <meta name="viewport" content="user-scalable=no, minimum-scale=1.0, maximum-scale=1.0, width=device-width, initial-scale=1.0" />
    </head>
    <body>

    <!-- Google Tag Manager -->
    <noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-5734XP"
                      height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-5734XP');</script>
    <!-- End Google Tag Manager -->
        <div class="width100Per">
            <cq:include script="head.jsp"/>
            <cq:include script="content.jsp"/>    
            <cq:include script="footer.jsp"/>
        </div>
    </body>
</html>

