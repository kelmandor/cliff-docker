cd conf
rm tomcat-users.xml
wget https://raw.githubusercontent.com/ahalterman/CLIFF-up/master/tomcat-users.xml
$CATALINA_HOME/bin/startup.sh

cd

echo "Start up Tomcat..."
$CATALINA_HOME/bin/shutdown.sh
$CATALINA_HOME/bin/catalina.sh run
echo "  done - you should try hitting a URL now to see if it works!"
echo "  try: http://server.srv/cliff-2.4.2/parse/text?q=This%20is%20about%20India%20the%20country"
