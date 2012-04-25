mondrian-depolyment
===================

mondrian deployment 




Loading the demo data


java -cp "/Users/stellard/mondrian/lib/commons-logging-1.0.4.jar:/Users/stellard/mondrian/lib/eigenbase-properties.jar:/Users/stellard/mondrian/lib/olap4j.jar:/Users/stellard/mondrian/lib/mondrian.jar:/Users/stellard/mondrian/lib/log4j.jar:/Users/stellard/mondrian/lib/commons-logging.jar:/Users/stellard/mondrian/lib/eigenbase-xom.jar:/Users/stellard/mondrian/lib/eigenbase-resgen.jar:/Users/stellard/mondrian/lib/eigenbase-properties.jar:/Users/stellard/mondrian/lib/mysql-connector-java-5.1.13.jar" mondrian.test.loader.MondrianFoodMartLoader -verbose -tables -data -indexes -jdbcDrivers=com.mysql.jdbc.Driver -inputFile=/Users/stellard/mondrian/demo/FoodMartCreateData.sql -outputJdbcURL="jdbc:mysql://localhost/foodmart?user=foodmart&password=foodmart"