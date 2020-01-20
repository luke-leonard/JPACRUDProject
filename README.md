## JPA CRUD Project

### Overview

This is a project that builds a full crud application

The project starts in MySQL WorkBench where I created a table from scratch. I chose a simple dog because well its a dog, who doesnt love dogs, am I right?

Upon creating the table, creating a custom database user and pre-populating the table with some pretty swell demo dogs, I exported the database to an sql file for easy recreation.

I then created a Gradle project that I use to model my super elaborate database.

Of course the next thing to do is create a very in depth and thorough j-unit test to verify that the database is up and running and the project can map the database to an entity.

I then built out a Spring Boot project and linked it with my entity mapping Project.

Follow that up with A lovely DAO that allows for easy communication with the data in the database.

No Website would be complete without some controllers and views which use the daos.

The website is quite functional in that you can search dogs, edit dogs, create new dogs, and delete dogs, ready for anyone who has just a few too many pooches to keep track of on a piece of paper.

Be warned that this project may be functional but has the user interface of a homeless ghost... Stretch goals are bootstrap but im still working on that.

### Concepts
* OO design
* Database design
* DAO design
* JPA design


### Technologies Used

* SQL : Standardized Query Language, query utilizing select, joins, predicates and functions.
* ORM : Object-Relational Mapping
* JDBC : Java Database Connectivity
* DAO : Data Accessor Object implementation
* JSP : JavaServer Page files to display webpages
* STS : Spring Tool Suite
* Gradle
* MySQL Workbench
* Apache Server
