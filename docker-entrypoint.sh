#!/bin/sh
set -e

# Write environment variable to config file

[ "${MUSICBOT_TOKEN}" ] && sed -i "s/token: '.*'/token: '${MUSICBOT_TOKEN}'/g" config/bot.js

[ "${MUSICBOT_PREFIX}" ] && sed -i "s/prefix: '.*'/prefix: '${MUSICBOT_PREFIX}'/g" config/bot.js

[ "${MUSICBOT_ACTIVITY}" ] && sed -i "s/activity: '.*'/activity: '${MUSICBOT_GAME}'/g" config/bot.js

exec "$@"
