#!/bin/bash
while in touch file{1..100}
do 
ls -lrt | rm file{1..10}
done
