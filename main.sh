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
    INDEXOF=${ARRINDEX[0]}
}

###
# Main
###
echo "Start of script..."
URL_SITE="https://www.apple.com/"
SEARCH="footer"
_REQUEST_GET $URL_SITE
_INDEX_OF "$PARSER" "$SEARCH"
echo "End of script..."