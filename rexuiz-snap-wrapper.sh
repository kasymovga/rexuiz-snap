#!/bin/sh
if test -n "$LIBGL_DRIVERS_PATH"
then
	export LIBGL_DRIVERS_PATH="$LIBGL_DRIVERS_PATH:$SNAP/usr/lib/x86_64-linux-gnu/dri"
else
	export LIBGL_DRIVERS_PATH="$SNAP/usr/lib/x86_64-linux-gnu/dri"
fi
if test -n "$LD_LIBRARY_PATH"
then
	export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$SNAP/usr/lib/x86_64-linux-gnu/pulseaudio"
else
	export LD_LIBRARY_PATH="$SNAP/usr/lib/x86_64-linux-gnu/pulseaudio"
fi
exec "$SNAP/Rexuiz/rexuiz-linux-sdl-x86_64"
