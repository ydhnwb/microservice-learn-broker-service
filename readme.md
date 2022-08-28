go mod tidy
run it docker compose up 


try to hit it via postman or your frontend ap to POST http://localhost:8090

for now i dont use any volume, when editing the code and compose up, docker will built old version (cached version)  

to avoid that, use docker compose up --build 