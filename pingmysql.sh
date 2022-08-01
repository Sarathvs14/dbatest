#!/bin/bash
str=''
mysqladmin -uroot --port=5501 --protocol=tcp  ping &> /dev/null
str=$?
if [ "$str" -eq 0 ]; then
  echo "mysql is runnnig";
else 
  echo "ALERT! MySQL Server is down";
fi
