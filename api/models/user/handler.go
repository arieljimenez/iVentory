package user

import (
	"encoding/json"
	"net/http"

	"github.com/arieljimenez/iventory/api/utils"
	"google.golang.org/appengine"
)

func HandleGetUsers(w http.ResponseWriter, req *http.Request) {
	ctx := appengine.NewContext(req)
	w = utils.SetContentToJSON(w)

	if users, err := getUsers(ctx); err != nil {
		json.NewEncoder(w).Encode("[]")

	} else {
		if users != nil {
			json.NewEncoder(w).Encode(users)

		} else {
			json.NewEncoder(w).Encode("[]")

		}

	}

}
