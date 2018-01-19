#!/bin/sh

_request_get()
{
  URL=$1
  body=$(curl -s $URL)
  parser="$body"
}

_index_of()
{
    STRING=$1
    echo $STRING | grep -aob '' | grep -oE '[0-9]+'
}

###
# Main
###
echo "Start of script..."
_request_get https://www.apple.com/
_index_of $parser
echo "End of script..."
