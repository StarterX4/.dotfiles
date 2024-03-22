#!/bin/bash 
# from https://dev.to/manekenpix/kde-plasma-ssh-keys-111e
[ -z "$SSH\_AGENT\_PID" ] || eval "$(ssh-agent -s)"
export SSH\_ASKPASS=/usr/bin/ksshaskpass