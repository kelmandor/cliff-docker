cd conf
rm tomcat-users.xml
wget https://raw.githubusercontent.com/ahalterman/CLIFF-up/master/tomcat-users.xml
$CATALINA_HOME/bin/startup.sh

echo "Getting CLIFF..."
echo "  downloading Cliff WAR file from GitHub"
cd; wget https://github.com/mitmedialab/CLIFF/releases/download/v2.4.2/cliff-2.4.2.war
mv cliff-2.4.2.war /usr/local/tomcat/webapps/
echo "  done (copied /usr/local/tomcat/webapps/)"

cd

sleep 10

echo "Start up Tomcat..."
$CATALINA_HOME/bin/shutdown.sh
sleep 10
$CATALINA_HOME/bin/catalina.sh run
echo "  done - you should try hitting a URL now to see if it works!"
echo "  try: http://server.srv/cliff-2.4.2/parse/text?q=This%20is%20about%20India%20the%20country"
