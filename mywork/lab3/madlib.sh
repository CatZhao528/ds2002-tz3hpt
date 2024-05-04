#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Please give me an adjective: " ADJ1
read -p "1. Please give me a noun: " Noun1
read -p "1. Please give me a verb: " Verb1
read -p "1. Please give me an adverbs: " ADV1
read -p "1. Please give me another adjective: " ADJ2
read -p "1. Please give me another noun: " Noun2
read -p "1. Please give me another verb: " Verb2
read -p "1. Please give me another adverb: " ADV2

echo "Once upon a time, there was a $ADJ1 $NOUN1 that loved to $VERB1 $ADV1. Then, a $ADJ2 $NOUN2 appeared and $VERB2 $ADV2."

chmod +x madlib.sh
