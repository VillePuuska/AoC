# AoC
Advent of Code solutions

Calling `./get_input.sh YYYY DD` copies the template notebook to `/YYYY/dayDD.ipynb` and `curl`'s your input to `YYYY/data/dayDD.txt`. The script assumes you've created the directories `./YYYY` and `./YYYY/data` and exported your AoC session cookie to the variable `$AOC_SESSION`.

This script follows the automation guidelines on the /r/adventofcode community wiki https://old.reddit.com/r/adventofcode/wiki/faqs/automation
- The input is fetched with curl, user agent is set and contains the location of this repo.
- The input is saved and the script does not fetch input if the file already exists.

**IF YOU MODIFY THE SCRIPT, UPDATE THE USER AGENT TO CONTAIN YOUR INFO INSTEAD OF MINE**
