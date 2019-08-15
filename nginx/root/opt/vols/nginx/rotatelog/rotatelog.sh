#!/bin/bash

getdatestring()
{
    date "+%Y%m%d_%H%M"
}
datestring=$(getdatestring)

mv /var/log/nginx/access.log /var/log/nginx/access.${datestring}.log
mv /var/log/nginx/error.log /var/log/nginx/error.${datestring}.log
kill -USR1 `cat /var/run/nginx.pid`

