#!/bin/bash
while true; do
  dummyValue="example:$((RANDOM % 100))|c"
  echo -n "$dummyValue" | nc -w 1 -u graphite 8125;
  echo "Sending $dummyValue to graphite"
done

