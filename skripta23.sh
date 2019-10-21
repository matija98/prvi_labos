#!/bin/bash

echo "Unesite IP adresu:"
read $adresa
echo "Unesite port:"
read $port

nc -z $adresa $port &> /dev/null

if [ "$?" -ne 0 ]; then
  echo "$port nije otvoren"
  exit 1
else
  echo "$port je otvoren"
  exit 0
fi
