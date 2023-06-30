#!/bin/bash
## Simple BASH script to send a message to Telegram.
#
# Require:
# Curl
# BOT TOKEN.
# Chat ID.

BOT_TOKEN='YOUR BOT TOKEN'
CHAT_ID='YOUR CHAT ID'

MESSAGE=$1

if test -z "$1"
then
    echo "Error"
    echo ""
    echo "No message"
    echo "You need to specify a message."
    echo ""
    echo "usege $0 \"This is the message that will be sent.\""
    exit 1
else
    URL="https://api.telegram.org/bot$BOT_TOKEN/sendMessage"
    curl --get --data-urlencode "chat_id=$CHAT_ID" --data-urlencode "text=$MESSAGE" $URL
    exit 0
fi
