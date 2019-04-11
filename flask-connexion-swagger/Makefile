DESTDIR=server/time/flaskConnexion   #figure out where this is. 

define terminal
	osascript -e 'tell application "Terminal" to do script "cd $(PWD); $1"'
endef

all: service start
	@echo "Done"

docker-all: docker-build docker-start
	@echo "DONE"

docker-build:
	@echo "building the image from docker file..."
	docker build -t #repo .
	@echo "image DONE"

docker-start:
	@echo "starting the service in container..."
	docker run -v /home/:/home/ -p 8080:8080 krkamatg/cloudmesh-timestamp

dest:
	mkdir -p $(DESTDIR)
	 
service: dest
	@echo "creating the service..."
	pip install --upgrade pip

	cp -r *.py $(DESTDIR)/swagger_server/controllers \
	cd $(DESTDIR) && pip install -r requirements.txt && \
	python setup.py install 
	
start:  
	@echo "starting the service..."
	cd $(DESTDIR) && python server.py





install:
	pip install -r requirements.txt


demo:
	$(call terminal, python server.py)
	sleep 3
	@echo "==============================================================================="
	@echo "Get the info"
	@echo "==============================================================================="
	curl http://localhost:8080/cloudmesh/cpu
	@echo
	@echo "==============================================================================="

