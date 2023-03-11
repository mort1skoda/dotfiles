#!/bin/bash
#filetype detector:
#this script aims to determine the file type,
#i.e. what program to open the file in.
#--------------------------------------------
# 1. by locking at the file extension:  *.txt   *.pdf
# 2. mime-type
# 3. other,,,, looking inside the file.
# 4. Aks the user.

set -e

file --mime-type -Lb $1
#
lf -remote 


