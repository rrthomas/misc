#!/bin/bash
# hb (howbig)
# Print the size of files on the path
# (c) Reuben Thomas <rrt@sc3d.org> 22/10/1998-30/9/2011
# Released under the GPL version 3, or (at your option) any later version.

name=`basename $0`

for i; do
    exe=`type -pP $i`
    if [ -n "$exe" ]; then
        size=`ls -l $exe | tr -s "[:blank:]" | cut -f 5 -d ' '`
        printf "$size\n"
    else
        printf "$name: can\'t find $i\n"
    fi
done
