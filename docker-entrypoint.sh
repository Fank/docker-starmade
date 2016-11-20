#!/usr/bin/env bash

if ! test -f config/server.cfg; then
	cp server-example.cfg config/server.cfg
fi

if [ "$#" -eq 0 ]
then
	exec java -Xms128m -Xmx1024m -jar ./StarMade.jar -server
else
	exec $@
fi
