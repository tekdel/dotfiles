#!/usr/bin/env bash

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8 "%"}')
echo "$CPU"
