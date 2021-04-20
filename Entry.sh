#!/bin/bash

echo "Server is Starting"
echo "./ut2k4server start" | su - ut2k4server
echo "Watching uptime"
watch uptime

