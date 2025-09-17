#!/bin/bash
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

SINK=@DEFAULT_AUDIO_SINK@

# get volume as decimal (0–1) and mute state; suppress warnings
VOL_RAW=$(wpctl get-volume "$SINK" 2>/dev/null)  # e.g., "Volume: 0.71"
VOL_DEC=$(echo "$VOL_RAW" | awk '{print $2}')     # extract number
MUTE=$(wpctl get-mute "$SINK" 2>/dev/null)

# convert to integer percentage
VOL=$(awk "BEGIN { printf \"%d\", $VOL_DEC * 100 }")

# define bar length
TOTAL=20
FILLED=$((VOL * TOTAL / 100))
EMPTY=$((TOTAL - FILLED))

# bar symbols
BAR_FILLED="#"
BAR_EMPTY="0"

# colors using <fc>
COLOR_FILLED="#dAA520"   # kanagawa dragon gold
COLOR_EMPTY="#444444"    # dark gray

# build bars
BARS="<fc=$COLOR_FILLED>$(printf '%*s' $FILLED '' | tr ' ' "$BAR_FILLED")</fc>"
BARS="$BARS<fc=$COLOR_EMPTY>$(printf '%*s' $EMPTY '' | tr ' ' "$BAR_EMPTY")</fc>"

# output
if [ "$MUTE" = "yes" ]; then
    echo "<fc=#ff5555>VOL: MUTED</fc>"
else
    echo "VOL: $BARS"
fi
