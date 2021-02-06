#!/bin/sh
export LIBGL_DRIVERS_PATH="$SNAP/usr/lib/x86_64-linux-gnu/dri"
if test -n "$LD_LIBRARY_PATH"
then
	export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$SNAP/usr/lib/x86_64-linux-gnu/pulseaudio"
else
	export LD_LIBRARY_PATH="$SNAP/usr/lib/x86_64-linux-gnu/pulseaudio"
fi
exec "$SNAP/Rexuiz/rexuiz-linux-sdl-x86_64"
