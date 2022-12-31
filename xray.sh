#!/bin/sh
if [ ! -f UUID ]; then
  UUID="06e0175b-6500-4141-a036-d93ef5ec27bc"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

