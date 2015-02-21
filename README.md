## docker-mongodb

This is a contaner for running mongodb. It is based on the official [ MongoDB Dockerfile](https://github.com/dockerfile/mongodb).

###Runbook
#####Set env varibles or edit entries in Makefile. Set the host port for mongodb.

	$ export MONGODB_PORT={mongodb_port}
	

#####Build and run docker container

	$ make container && make run
	

#####Restart container

	$ make kill && make run	
	

#####Tail logs in running container

	$ make tail		
	
###Data	
Data is stored on the host in `/data/db`