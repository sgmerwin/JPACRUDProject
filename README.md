## Spring MVC JPA CRUD Project

#### Week 9 HW for SD

### Overview

<img src="https://github.com/sgmerwin/JPACRUDProject/blob/master/JPA_img.jpg" width="300" height="300">

<img src="https://github.com/sgmerwin/JPACRUDProject/blob/master/project2_img.jpg" width="300" height="300">

The JPA Brushlessmotor Project contains a Brushlessmotor java class with attributes that correspond with the table rows in the Brushlessmotors database. This JPA project contains the persistence xml file that provides the database connection info. 

The BrushlessmotorData Spring Boot Project imports the Brushlessmotor java class from the JPA project. An index jsp file references a controller that runs DAO object methods to pull info from the database ans pass the info into a Brushlessmotor java object. The java object is then used to pass info to the user interface. An edited java object can be used to pass info back to the database. 

The user has options to get a motor by ID, list all of the motors in the database, update a motor, create a motor, or delete a motor. 
<br>
<img src="https://github.com/sgmerwin/JPACRUDProject/blob/master/index.jpg" width="300" height="300">

<img src="https://github.com/sgmerwin/JPACRUDProject/blob/master/show.jpg" width="300" height="300">

### Tech Used

Eclipse Spring Tool Suite 4

MYSQL Workbench

org.hibernate.jpa.HibernatePersistenceProvider

bootstrapcdn
