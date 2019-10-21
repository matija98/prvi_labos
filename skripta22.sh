#!/bin/bash

echo "Unesi vrijeme u minutama unutar kojega su modificirane datoteke:"

read vrijeme

find /home/hansolo -mmin -$vrijeme -type f | tee /tmp/tmp.txt
tar -pcf /home/hansolo/backup.tgz -T /tmp/tmp.txt
