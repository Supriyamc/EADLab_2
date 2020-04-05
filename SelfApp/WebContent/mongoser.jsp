<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"
    
import="com.mongodb.client.MongoClients"
import="com.mongodb.client.MongoClient"
import="com.mongodb.MongoClientSettings"
import="com.mongodb.ConnectionString"
import="com.mongodb.ServerAddress"
import="com.mongodb.MongoCredential"
import="com.mongodb.MongoClientOptions"
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import static com.mongodb.client.model.Filters.*;
import com.mongodb.client.model.CreateCollectionOptions;
import com.mongodb.client.model.ValidationOptions;

import="java.util.Arrays"
    
    %>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<% 
MongoClient mongoClient = MongoClients.create("mongodb://host1:27017");
//MongoDatabase database = mongoClient.getDatabase("test");

    %>
</body>
</html>