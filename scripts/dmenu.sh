#!/usr/bin/env bash

# dmenu: a menu to launch them all
# This script uses dmenu to automatically run a command based on the text thrown at it.
# Features:
# execute a command if the input text belongs to /bin or /usr/local/bin
# open url in Brave if the input text starts with http
# translate the input text in English/French using the deepl website if the input text starts with dpen/dpfr
# search the input text with duduckgo (if all the above failed)
# this script also reconnects my vpn to a random US location if no instance of Brave nor vpnc are running


#Variables definition to recognize how to handle the input text
bin=$(ls --ignore='=' --ignore='[' /bin)
loc=$(ls /usr/local/bin)
bmark=$(echo "" & < ~/.config/BraveSoftware/Brave-Browser/Default/Bookmarks grep '"url":' | awk '{print $2}' | sed s'/"//g')  #list all bookmarks in Brave
action=$(echo -e"$bin" "$loc" "$bmark" | dmenu)

#Define what to run in response to the input text
case $action in
    "="*) =$(echo "$action" | sed s'/=/ /') | dmenu;;
    "") ;;
    *) action=$( echo "$action" | sed "s|xxx|$(xclip -o)|") #replace xxx in the input text with the last entry in the clipboard
	    
	    #Execute a command if the input text belongs to /bin or /usr/local/bin
	    if ls /bin /usr/local/bin | grep -q ^$action$;  then
		    "$action" & kill $$ 
		#Reconnect my vpn to a random US location if no instance of Brave and my work vpn are running
	    elif [ -z "$(pidof brave)" ] && [ -z "$(pidof vpnc)"  ]; then
		   expressvpn disconnect &&
		   vpn=($(expressvpn list all | grep USA | awk '{print $1}' | sed ':a;N;$!ba;s/\n/ /g')
           expressvpn connect "$(echo ${vpn[$[RANDOM % ${#vpn[@]}] ]})"
	    fi
	    
	    #Open url in Brave if the input text starts with http
	    if echo "$action" | grep -q '^http' ; then
		    brave --incognito "$action" & kill $$
	    
	    #Translate the input text in English using the deepl website if the input text starts with dpen
	    elif echo "$action" | grep -q '^dpen' ; then
		    brave --incognito "https://www.deepl.com/translator#fr/en/$(echo "$action" | sed 's/dpen/ /' | sed 's/ /%20/g')""  & kill $$
	    
	    #Translate the input text in French using the deepl website if the input text starts with dpfr
	    elif echo "$action" | grep -q '^dpfr' ; then
		    brave --incognito "https://www.deepl.com/translator#en/fr/$(echo "$action" | sed 's/dpfr/ /' | sed 's/ /%20/g')"" & kill $$
	    
	    #Search the input text with duduckgo
	    else
		    brave --incognito "https://duckduckgo.com/?q=${action// /+}&kp=-2&kav=1&kn=1&k1=-1&kak=-1&kax=-1&kaq=-1&kao=-1&kap=-1&kau=-1&kae=t&ko=1&k18=-1" & kill $$
	    fi;;
esac
