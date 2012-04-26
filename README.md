mondrian-depolyment
===================

Loading the demo data

    $ mysqladmin create foodmart
  
    $ mysql
    mysql> grant all privileges on *.* to 'foodmart'@'localhost' identified by 'foodmart';
    Query OK, 0 rows affected (0.00 sec)
    mysql> quit 
    Bye

`java -cp "/Users/stellard/mondrian/lib/commons-logging-1.0.4.jar:/Users/stellard/mondrian/lib/eigenbase-properties.jar:/Users/stellard/mondrian/lib/olap4j.jar:/Users/stellard/mondrian/lib/mondrian.jar:/Users/stellard/mondrian/lib/log4j.jar:/Users/stellard/mondrian/lib/commons-logging.jar:/Users/stellard/mondrian/lib/eigenbase-xom.jar:/Users/stellard/mondrian/lib/eigenbase-resgen.jar:/Users/stellard/mondrian/lib/eigenbase-properties.jar:/Users/stellard/mondrian/lib/mysql-connector-java-5.1.13.jar" mondrian.test.loader.MondrianFoodMartLoader -verbose -tables -data -indexes -jdbcDrivers=com.mysql.jdbc.Driver -inputFile=/Users/stellard/mondrian/demo/FoodMartCreateData.sql -outputJdbcURL="jdbc:mysql://localhost/foodmart?user=foodmart&password=foodmart"`


### Install

`brew install maven`

`mvn build`

### Deploy 

`mvn tomcat:deploy`






#### Maven project creation example

`mvn archetype:generate -DgroupId=com.kujilabs.app -DartifactId=mondrian-xmla -DarchetypeArtifactId=maven-archetype-webapp`