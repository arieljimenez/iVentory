#!/bin/bash

# Check if we have all the dependencieis
. ./scripts/dependencies.sh

echo "+-------------------------------------+"
echo "|      Runing the Dev Environment     |"
echo "+-------------------------------------+"
npm run dev
