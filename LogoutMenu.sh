#!/bin/bash 
#===============================================================================
#
#          FILE: LogoutMenu.sh
#
#         USAGE: ./LogoutMenu.sh
#
#   DESCRIPTION:Simple logout manager for terminal.
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Ilya Malakhin (pilat1988@gmail.com),
#  ORGANIZATION:
#       CREATED: 22.06.2013 12:49:46 NOVT
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

ACTION=`dialog --stdout --menu "logout Menu" 0 45 5 "Shutdown"\
 "Power off the computer" "Reboot" "Reboot the computer" "Suspend" "Suspend to ram"\
  "Hibernate" "Suspend to disk" "LockScreen" "slock"`
if [ -n "${ACTION}" ];then
  case $ACTION in
  Shutdown)
  	dialog --yesno "Are you sure?" 5 20&&sudo halt
  ;;
  Reboot)
    dialog --yesno "Are you sure?" 5 20&&sudo reboot
  ;;
  Suspend)
	sudo hibernate-ram
  ;;
  Hibernate)
  	sudo hibernate
  ;;
  LockScreen)
  	slock
  ;;
  esac
fi

