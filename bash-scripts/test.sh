#!/bin/bash

#### Souce Imports

if [-e error.sh]; then
    source error.sh
else
    echo "${0}: ${LINENO}: error.sh could not be found." 1>&2

#### Main

