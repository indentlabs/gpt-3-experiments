# Group Generator

This experiment generates fictional groups. Please see `prompt.txt` to view the prompt used.

## Usage in Notebook.ai

Users are able to create random groups to easily fill out their world, saved under "Group" pages.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Good for generating a single group. |
| 0.25        | Usable. |
| 0.50        | Usable. |
| 0.75        | Usable. |
| 1.00        | Has some really good results, but also some minor format bucking, which makes it unusable for production. Good for some raw ideas, though. |

Recommended temperature for our use-case: 0.50 gives the best results in initial test cases, but 0.25 and 0.75 are also good.