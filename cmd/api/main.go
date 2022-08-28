package main

import (
	"fmt"
	"log"
	"net/http"
)

const WEB_PORT = "8090"

type Config struct{}

func main() {
	app := Config{}
	log.Printf("Starting broker service on port %s", WEB_PORT)

	server := &http.Server{
		Addr:    fmt.Sprintf("0.0.0.0:%s", WEB_PORT),
		Handler: app.routes(),
	}

	err := server.ListenAndServe()
	if err != nil {
		log.Panic(err)
	}
}
