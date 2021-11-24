#!/bin/bash

mkdir  /home/ifpb/`date +%H:%M-%d-%b-%Y`
cp -R * /home/ifpb/`date +%H:%M-%d-%b-%Y`
tar -cvzf 5data.tar.gz "/home/ifpb/`date +%H:%M-%d-%b-%Y`"
rm -r "/home/ifpb/`date +%H:%M-%d-%b-%Y`"
