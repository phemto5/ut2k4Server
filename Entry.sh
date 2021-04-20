#!/bin/bash

echo "Server is Starting"
echo "./ut2k4server start" | su - ut2k4server
echo "Printing Details terminal"
echo "./ut2k4server dt" | su - ut2k4server
echo "Watching terminal"
echo "./ut2k4server console" | su - ut2k4server
watch uptime

