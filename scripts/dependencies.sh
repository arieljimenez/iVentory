#!/bin/bash

echo "+----------------------------+"
echo "+ Installing Go Dependencies +"
echo "+----------------------------+"
go get -u -d google.golang.org/appengine

echo "+----------------------------+"
echo "+ Installing Node / Elm Dep  +"
echo "+----------------------------+"

cd $GOPATH/src/github.com/arieljimenez/iventory

npm install && \
  elm-package install -y

echo "+------------------------------+"
echo "+ Done installing dependencies +"
echo "+------------------------------+"
