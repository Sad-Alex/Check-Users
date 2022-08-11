@echo Starting script

@echo Loadind web server

cd target
start java -jar Task-jar-with-dependencies.jar

@echo Loading completed

start http://localhost:8080/

@pause