# Race Generator

This experiment generates fictional races. Please see `prompt.txt` to view the prompt used.

## Usage in Notebook.ai

Users are able to create random races to easily fill out their world, saved under "Race" pages.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Usable for generating single races at a time. |
| 0.25        | Some races are taken from existing lore, but descriptions are very good. We need to either adjust the prompt for more novelness or have some kind of copyright check in place before using this low temperature in production. |
| 0.50        | Better quality. Lots of variance. Occasionally references existing creatures from lore. |
| 0.75        | Great quality. Great variance. Seems usable. |
| 1.00        | Unusable. Too much format bucking. |

Recommended temperature for our use-case: 0.75