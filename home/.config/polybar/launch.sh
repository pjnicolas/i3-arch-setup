#!/bin/bash

killall -q polybar
polybar example >> /tmp/polybar1.log 2>&1 &
