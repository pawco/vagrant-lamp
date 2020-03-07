#!/usr/bin/env bash

if [ -L source/node_modules ]; then
    echo "-- Removing node_modules folder --"
    rm -rf source/node_modules
fi
if [ -d source/public ]; then
    echo "-- Removing public folder --"
    rm -rf source/public
fi
echo "-- All done! --"
