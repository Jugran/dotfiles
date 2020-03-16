#!/bin/bash

if [ x$DISPLAY != x ]
then
  (devilspie >> /dev/null) &
fi
