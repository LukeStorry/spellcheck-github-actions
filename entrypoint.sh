#!/bin/bash

if [ ! -f "./spellcheck.yaml" ]; then
    if [ -f "./.spellcheck.yaml" ]; then
	cp ./.spellcheck.yaml spellcheck.yaml
    else
	cp /spellcheck.yaml .
    fi
fi

if [ ! -f "./wordlist.txt" ]; then
    if [ -f "./.wordlist.txt" ]; then
	cp ./.wordlist.txt wordlist.txt
    else
	cp /wordlist.txt .
    fi
fi

pyspelling -vvvv -c spellcheck.yaml
