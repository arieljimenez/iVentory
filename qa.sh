#!/bin/bash

# Check if we have all the dependencieis
. ./scripts/dependencies.sh

echo "+-------------------------------------+"
echo "|        Compiling source files       |"
echo "+-------------------------------------+"
npm run prod

echo "+-------------------------------------+"
echo "|   Executing Electron App for Test   |"
echo "+-------------------------------------+"
electron app.js
