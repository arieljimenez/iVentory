#!/bin/bash
echo "+-------------------------------------+"
echo "| Cheking/Installing npm dependencies |"
echo "+-------------------------------------+"

npm install

echo "+-------------------------------------+"
echo "| Cheking/Installing Elm dependencies |"
echo "+-------------------------------------+"

elm package install -y
