package main

import (
	"github.com/ouqiang/goproxy"
	"net/http"
	"time"
)

func main() {
	proxy := goproxy.New()
	server := &http.Server{
		Addr:         ":13440",
		Handler:      proxy,
		ReadTimeout:  10 * time.Second,
		WriteTimeout: 10 * time.Second,
	}
	err := server.ListenAndServe()
	if err != nil {
		panic(err)
	}
}
