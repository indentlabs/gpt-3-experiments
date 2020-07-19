# Landmark Generator

This experiment generates fictional landmarks. Please see `prompt.txt` to view the prompt used.

## Usage in Notebook.ai

Users are able to create random landmarks to easily fill out their world, saved under "Landmark" pages.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Nice, lengthy detail. Good for generating landmarks one at a time. |
| 0.25        | Interesting, believable landmarks. Good quality, good consistency. |
| 0.50        | One landmark is [missing a description](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/landmark-generator/output-0_5.txt#L29) which is concerning, but otherwise this temperature looks promising. |
| 0.75        | Names and descriptions are missing. Unusable. |
| 1.00        | Surprisingly usable given how bad the formatting at 0.75 was.  |

Recommended temperature for our use-case: 1.0 looks promising, but needs further testing to ensure its output is stable enough for production. Otherwise, we should probably go with 0.25.