#!/bin/sh
#
echo "run java app"

#java�������������
JAVA_OPTS="-server -ms512m -mx512m -Xmn256m -Djava.awt.headless=true -XX:MaxPermSize=128m"

java $JAVA_OPTS -Djava.ext.dirs=lib -Djava.library.path=lib com.httpclient.system.StartServer

