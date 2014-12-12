#!/bin/bash

if [ ! -d /data/log ]; then
  mkdir /data/log;
fi

if [ ! -f /data/log/askbot.log ]; then
	touch /data/log/askbot.log;
fi