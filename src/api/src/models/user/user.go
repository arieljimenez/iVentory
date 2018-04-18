package user

import (
	"context"
	"time"

	"google.golang.org/appengine/datastore"
)

type User struct {
	FirstName   string
	LastName    string
	Username    string
	Password    string
	IsValidUser bool
	UserType    string
	Ts          time.Time
}

type Users []*User

func (u *User) newUser(ctx context.Context, user User) error {
	key := datastore.NewIncompleteKey(ctx, "User", nil)

	if _, err := datastore.Put(ctx, key, user); err != nil {
		return err
	}

	return nil
}

func getUsers(ctx context.Context) (Users, error) {
	var users Users
	q := datastore.NewQuery("Users")

	if _, err := q.GetAll(ctx, &users); err != nil {
		return nil, err
	}

	return users, nil
}
