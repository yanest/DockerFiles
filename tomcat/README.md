
###典型的运行实例

```
docker run -it -d --name tomcat -v /opt/conf/tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml -v /opt/data/tomcat/app1/:/usr/local/tomcat/webapps/app1 -p 8080:8080 tomcat
```

