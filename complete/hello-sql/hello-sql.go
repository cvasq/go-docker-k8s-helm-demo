package main

import (
	"database/sql"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"log"
	"net/http"
	"os"
)

func rootHandler(w http.ResponseWriter, r *http.Request) {
	log.Println(r.URL)
	hostname, _ := os.Hostname()
	fmt.Fprintln(w, "Host:", hostname)
	dbUser := os.Getenv("DB_USER")
	dbPassword := os.Getenv("DB_PASSWORD")
	dbHost := os.Getenv("DB_HOST")
	dbPort := os.Getenv("DB_PORT")
	dbName := os.Getenv("DB_NAME")
	// DSN (Data Source Name) format: user:password@tcp(127.0.0.1:3306)/dbname
	dbCredentials := fmt.Sprintf("%v:%v@tcp(%v:%v)/%v", dbUser, dbPassword, dbHost, dbPort, dbName)

	db, err := sql.Open("mysql", dbCredentials)
	if err != nil {
		panic(err.Error())
	}
	defer db.Close()

	err = db.Ping()
	if err != nil {
		fmt.Fprintln(w, "Database connection error")
	} else {
		fmt.Fprintln(w, "Connected to database!!")
	}
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
