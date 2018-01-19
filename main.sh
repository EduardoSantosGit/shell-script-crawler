#!/bin/bash

#body=$(curl -s https://www.apple.com/)

#parser="$body"

#!/bin/sh
# A simple script with a function...

_request()
{
  URL=$1
  body=$(curl -s $URL)
  parser="$body"
  
}

_parser_text()
{

}

###
# Main
###
echo "Start of script..."
_request https://www.apple.com/
echo "End of script..."
