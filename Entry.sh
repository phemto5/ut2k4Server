#!/bin/bash

echo "Server is Starting"
echo "./ut2k4server start" | su - ut2k4server
echo "Printing Details terminal"
echo "./ut2k4server dt" | su - ut2k4server
echo "Watching terminal"
printf "./ut2k4server console\nY\n" | su - ut2k4server
printf 'tail -f /home/ut2k4server/log/server/ut2k4server-game.log' | su - ut2k4server
