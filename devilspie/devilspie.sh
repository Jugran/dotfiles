#!/bin/bash

if [ x$DISPLAY != x ]
then
    devilspie -a >> /dev/null &
fi