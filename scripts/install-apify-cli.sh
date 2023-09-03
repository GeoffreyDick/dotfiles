#!/bin/bash

if command -v apify &> /dev/null; then
    exit
fi

bun add -g apify-cli
