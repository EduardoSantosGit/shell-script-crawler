#!/bin/sh

_REQUEST_GET()
{
  URL=$1
  BODY=$(curl -s $URL)
  PARSER="$BODY"
}

_INDEX_OF()
{
    TEXTINDEX=$1
    PARAM=$2
    LISTINDEXOF=$( echo $TEXTINDEX | grep -aob $PARAM | grep -oE '[0-9]+') 
    ARRINDEX=($LISTINDEXOF)
    INDEXOFCURRENT=${ARRINDEX[0]}
}

_SUBSTRING()
{
    POSITION=$1
    FLOOR=$2
    TEXT=$3
    SUBSTRINGCURRENT="${TEXT:POSITION:FLOOR}"
}

###
# Main
###
echo "Start of script..."
URL_SITE="https://www.apple.com/"
SEARCH="footer"
_REQUEST_GET $URL_SITE
_INDEX_OF "$PARSER" "$SEARCH"
_SUBSTRING 10 10 "$PARSER"
echo "End of script..."