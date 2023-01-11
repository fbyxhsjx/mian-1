#!/bin/sh
if [ ! -f UUID ]; then
  UUID="0b4ca1b8-584f-4ee4-9ce3-9301c87ad7a4"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

