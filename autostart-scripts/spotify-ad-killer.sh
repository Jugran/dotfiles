#!/bin/bash

if [ x$DISPLAY != x ]
then
  (ad-killer >> /dev/null) &
fi

