package alleycatt

import (
	"fmt"
	"math/rand"
	"net/http"
)

const (
	NO = iota
	NEVER
	NOT_IN_YOUR_LIFETIME
	POSSIBLY_BUT_NO
	NEGATIVE_G_RIDER
)

func init() {
	http.HandleFunc("/alleycatt/api", alleycat)
	http.HandleFunc("/alleycatt/shake", shake)
}

var responses []string = []string{"NO!", "Never..fuck face", "Not on your life", "Possibly...but...no.", "Negative Ghost-Rider"}

func shake(rw http.ResponseWriter, req *http.Request) {
	rw.Header().Set("Content-Type", "text/html")
	rw.Write([]byte(fmt.Sprintf("<html><head></head><body>Magic 8 ball says: %s</body></html>", responses[rand.Intn(len(responses))])))
}

func alleycat(rw http.ResponseWriter, r *http.Request) {
	rw.Header().Set("Content-Type", "text/html")
	rw.Write([]byte(`<html><head></head><body>alleycat man</body></html>`))
}
