package utils

import "net/http"

func SetContentToJSON(w http.ResponseWriter) http.ResponseWriter {
	w.Header().Set("Content-Type", "application/json")
	return w
}
