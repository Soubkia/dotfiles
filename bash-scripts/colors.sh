#!/bin/bash

# colors - A script containing codes for printing colors

##### Constants

END="\033[0m"
BLACK="\033[0;30m"
RED="\033[0;31m"
GREEN="\033[0;32m"
ORANGE="\033[0;33m"
BLUE="\033[0;34m"
PURPLE="\033[0;35m"
CYAN="\033[0;36m"
LIGHT_GRAY="\033[0;37m"
GRAY="\033[1;30m"
LIGHT_RED="\033[1;31m"
LIGHT_GREEN="\033[1;32m"
YELLOW="\033[1;33m"
LIGHT_BLUE="\033[1;34m"
LIGHT_PURPLE="\033[1;35m"
LIGHT_CYAN="\033[1;36m"
WHITE="\033[1;37m"

##### Function

color_print()
{
#	-------------------------------------------------------------------
#	Function for printing in color
#		Accepts two arguments:
#			$1 - color constant defined above
#			$2 - string containing the message to print
#	-------------------------------------------------------------------


	echo "${1}${2}${END}"
}

# Examples of calls to the color_print function.
# color_print ${BLACK} "This prints in black"
# color_print ${RED} "This prints in red"
# color_print ${GREEN} "This prints in green"
# color_print ${ORANGE} "This prints in orange"
# color_print ${BLUE} "This prints in blue"
# color_print ${PURPLE} "This prints in purple"
# color_print ${CYAN} "This prints in cyan"
# color_print ${LIGHT_GRAY} "This prints in light gray"
# color_print ${GRAY} "This prints in gray"
# color_print ${LIGHT_RED} "This prints in light red"
# color_print ${LIGHT_GREEN} "This prints in light green"
# color_print ${YELLOW} "This prints in yellow"
# color_print ${LIGHT_BLUE} "This prints in light blue"
# color_print ${LIGHT_PURPLE} "This prints in light purple"
# color_print ${LIGHT_CYAN} "This prints in light cyan"
# color_print ${WHITE} "This prints in white"
