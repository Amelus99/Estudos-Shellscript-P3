#!/bin/sh

sed -E 's/[[:digit:]]*\.[[:digit:]]*\.[[:digit:]]*\.[[:digit:]]/**!!CENSU--RADO!!**/g' < $1
