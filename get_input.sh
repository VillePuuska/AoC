#!/bin/bash

if [ $# != 2 ]; then
    echo "Pass the year and day as parameters."
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Missing folder for the year."
    exit 1
fi

if [ ! -d "$1/data" ]; then
    echo "Missing data folder for the year."
    exit 1
fi

if [ -f "$1/day$2.ipynb" ]; then
    echo "Notebook for the day already exists."
else
    echo "Copying template notebook."
    cp "template.ipynb" "$1/day$2.ipynb"
fi

if [ -f "$1/data/day$2.txt" ]; then
    echo "Input for the day already exists."
else
    echo "Making empty input file."
    touch "$1/data/day$2.txt"
fi
# elif [ -z "$AOC_SESSION" ]; then
#     echo "You need to set the session cookie to the environment variable AOC_SESSION."
#     exit 1
# else
#     echo "Curling input."
#     curl -A "github.com/VillePuuska/AoC" --cookie "session=$AOC_SESSION" https://adventofcode.com/$1/day/$2/input > "$1/data/day$2.txt"
# fi

if [ -f "$1/data/day$2_ex.txt" ]; then
    echo "Example file for the day already exists."
else
    echo "Making example file."
    touch "$1/data/day$2_ex.txt"
fi
