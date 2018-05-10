#!/bin/sh

# prevent conflicts with existing
rm -rf node_modules

# Allow run from any user.
export HOME=/tmp
# Link global packages.
/usr/bin/npm link $NPM_PACKAGES

exec "$@"
