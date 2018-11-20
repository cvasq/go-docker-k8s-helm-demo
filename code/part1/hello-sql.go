package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func rootHandler(w http.ResponseWriter, r *http.Request) {
	hostname, _ := os.Hostname()
	fmt.Fprintln(w, "Host:", hostname)
}

func main() {
	listeningPort := os.Getenv("LISTENING_PORT")
	if listeningPort == "" {
		log.Println("No listening port was specified")
		os.Exit(1)
	}
	http.HandleFunc("/", rootHandler)
	log.Println("Starting server on port:", listeningPort)
	log.Fatal(http.ListenAndServe(":"+listeningPort, nil))
}
