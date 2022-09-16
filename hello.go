package main

import (
    "fmt"
    "net/http"
)

func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        fmt.Fprintf(w, "\n Go Web Hello World!\n")
    })

    http.ListenAndServe(":8082", nil)
}
