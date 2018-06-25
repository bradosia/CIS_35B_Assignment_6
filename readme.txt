//============================================================================
// Name        : Assignment 6
// Author      : Branden Lee
// Date        : 6/23/2018
// Description : KBB website application
//============================================================================

File Structure
/src - source files
/bin - compiled java bytecode for JVM
UML.pdf - design
readme.txt - student information and configuration steps
FordZTW.txt - Ford Wagon ZTW text file
FordZTW.properties
BMW320i.txt - BMW 320i text file
BMW320i.properties - BMW 320i properties file
changeLog.txt - changes made to reclaim points
discussionUpdates.txt - edits to discussion posts

Tomcat Structure:
Copy "/bin" to
/webapps/KBB/WEB-INF/classes
Copy "/bin/JSP" to
/webapps/KBB/jsp

Tomcat Servlets and JSP:
Car Selection Servlet:
http://localhost:8080/KBB/servlet/servlets.CarSelection
Car Configuration Servlet:
http://localhost:8080/KBB/servlet/servlets.CarConfiguration
Car Pricing JSP:
http://localhost:8080/KBB/jsp/CarPrice.jsp

Server:
/src/server/DefaultSocketServer
Client:
/src/client/DefaultSocketClient

To test, please create a folder called "KBB" in the webapps directory of your tomcat home.
Follow the "Tomcat Structure" above to get the structure.
End user should start from:
http://localhost:8080/KBB/servlet/servlets.CarSelection

You will need to start the server and client like in assignment 5 and 
upload the two property files:
- FordZTW.properties
- BMW320i.properties

Email to:
cislabs05@gmail.com
cis 35b class