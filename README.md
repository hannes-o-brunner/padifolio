# padifolio

A proof of concept for an AngularJS Web-UI talking to an Oracle PL/SQL based REST service layer.

## Repo contents

- SQL scripts to set up database (very simple, mocked calculations)

- Java JAX-RS implementation of API (JDBC to database) and Service (Rest via JAX-RS) layer

- AngularJS based Web UI (in `src/main/resources/webapp/padifolio`)


## Build and Run

Build the project with maven.

This will generate an executable jar `target/padifolio.jar` which can be executed by either double click or with `java -jar target/padiofolio.jar` from the project root directory.

The necessary libraries are under `target/lib`, they are not included in the executable jar due to problems with class loading / class path scanning.


## Database Setup

The database (Oracle Express Edition 11gR2) is run in a docker container which can be set up as follows

0. Have docker installed locally, obviously

1. Load oracle docker image

<pre>
$ docker pull wnameless/oracle-xe-11g

$ docker images
REPOSITORY                TAG                 IMAGE ID            CREATED             SIZE
hello-world               latest              1815c82652c0        8 weeks ago         1.84 kB
wnameless/oracle-xe-11g   latest              51fad6f11394        5 months ago        2.236 GB
</pre>

2. Start oracle container on default machine

<pre>
$ docker-machine ls
NAME      ACTIVE   DRIVER       STATE     URL                         SWARM   DOCKER        ERRORS
default   *        virtualbox   Running   tcp://192.168.99.100:2376           v17.06.0-ce

$ docker run -d -p 49160:22 -p 49161:1521 -e ORACLE_ALLOW_REMOTE=true wnameless/oracle-xe-11g
84da6650ac19b5606a120e9a5a8bd56d5958410fd678a75a54074a120b7de803

$ docker ps
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS              PORTS                                                      NAMES
84da6650ac19        wnameless/oracle-xe-11g   "/bin/sh -c '/usr/sbi"   9 seconds ago       Up 8 seconds        8080/tcp, 0.0.0.0:49160->22/tcp, 0.0.0.0:49161->1521/tcp   vigilant_newton
</pre>

3. Manually set up database with database script, f.ex. via Oracle SQLdeveloper
