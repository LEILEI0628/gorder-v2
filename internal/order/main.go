package main

import (
	"log"
	"net/http"
)

func main() {
	log.Println("Order service is running on port 8082")
	mux := http.NewServeMux()
	mux.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		_, _ = w.Write([]byte("Order service"))
	})
	if err := http.ListenAndServe(":8082", mux); err != nil {
		panic(err)
	}
}
