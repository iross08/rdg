<%-- 
    Document   : header
    Created on : 04-Jun-2017, 16:51:55
    Author     : i Rashadul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
    </head>
    
    <script>
        function openCity(cityName, elmnt, color) {
            // Hide all elements with class="tabcontent" by default */
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }

            // Remove the background color of all tablinks/buttons
            tablinks = document.getElementsByClassName("tablink");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].style.backgroundColor = "";
            }

            // Show the specific tab content
            document.getElementById(cityName).style.display = "block";

            // Add the specific color to the button used to open the tab content
            elmnt.style.backgroundColor = color;
        }

        // Get the element with id="defaultOpen" and click on it
        document.getElementById("defaultOpen").click(); 

    </script>
    
    <body>
        <div class="HeaderLogo">
            <a href="${pageContext.request.contextPath}">
            <img src="${pageContext.request.contextPath}/images/logo.jpg" alt="Logo of the Organization" style="width:150px;height:150px;">
            </a>
        </div>
            
        <div id="menu1" class="tabcontent">
            <jsp:include page='about.jsp'>
                <jsp:param name="menu" value=""/>
            </jsp:include>                    
        </div>

        <div id="menu2" class="tabcontent">
            <jsp:include page='we.jsp'>
                <jsp:param name="menu" value=""/>
            </jsp:include>                
        </div>

        <div id="menu3" class="tabcontent">
            <h3>we are there, where are you standing now</h3>
            <jsp:include page='clientList.jsp'>
                <jsp:param name="menu" value=""/>
            </jsp:include>                
        </div>

        <div id="menu4" class="tabcontent">
            <h3>nice, ain't this?</h3>
            <jsp:include page='workingEnvironment.jsp'>
                <jsp:param name="menu" value=""/>
            </jsp:include>                
        </div>

        <div id="menu5" class="tabcontent">
            <h3>"it is on your hand what you wishing for", our promise</h3>
            <jsp:include page='development.jsp'>
                <jsp:param name="menu" value=""/>
            </jsp:include>                
        </div>

        <div id="menu6" class="tabcontent">
            <h3>we give away the technology and tools, show you the trends, and display the intra-disciplinary theories to make your professional forward to your dream</h3>
            <jsp:include page='scholar-centre.jsp'>
                <jsp:param name="menu" value=""/>
            </jsp:include>                
        </div>

        <div id="menu7" class="tabcontent">
            <h3>we are very social and keep our community learning with our in house technology and software</h3>
            <jsp:include page='community.jsp'>
                <jsp:param name="menu" value=""/>
            </jsp:include>                
        </div>
 
        <div id="menu8" class="tabcontent">
            <h3>keeps you continuous</h3>
            <jsp:include page='research.jsp'>
                <jsp:param name="menu" value=""/>
            </jsp:include>                
        </div>
            
        <button class="tablink" onclick="openCity('menu1', this, 'red')" id="defaultOpen">About</button>
        <button class="tablink" onclick="openCity('menu2', this, 'red')">We?</button>
        <button class="tablink" onclick="openCity('menu3', this, 'red')">Clients</button>
        <button class="tablink" onclick="openCity('menu4', this, 'red')">Working Environment</button> 
        <button class="tablink" onclick="openCity('menu5', this, 'red')">What we Developed, and Work on</button> 
        <button class="tablink" onclick="openCity('menu6', this, 'red')">Scholar-Centre</button> 
        <button class="tablink" onclick="openCity('menu7', this, 'red')">Our Community</button> 
        <button class="tablink" onclick="openCity('menu8', this, 'red')">Research-Centre</button> 

    </body>
</html>
