#!/bin/bash

# error handling routine


# I put a variable in my scripts named PROGNAME which
# holds the name of the program being run.  You can get this
# value from the first item on the command line ($0).

PROGNAME=$(basename $0)


error_exit()
{

#	----------------------------------------------------------------
#	Function for exit due to fatal program error
#		Accepts 1 argument:
#			string containing descriptive error message
#	----------------------------------------------------------------


	echo "\033[0;31m${PROGNAME}: ${1:-"Unknown Error"}\033[0m" 1>&2
	exit 1
}

# Example call of the error_exit function.  Note the inclusion
# of the LINENO environment variable.  It contains the current
# line number.
# error_exit "$LINENO: An error has occurred."
