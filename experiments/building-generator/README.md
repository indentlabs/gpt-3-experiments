# Building Generator

This experiment generates fictional buildings. Please see `prompt.txt` to view the prompt used.

## Usage in Notebook.ai

Users are able to create random buildings to easily fill out their world, saved under "Building" pages.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Seems fine, but obviously we want a bit more creativity than one or two suggestions. |
| 0.25        | Makes solid references to groups and houses in the prompt, which is promising for fleshing out existing cities/regions from a user's existing buildings. |
| 0.50        | Also looks great. Good consistency and good variety. |
| 0.75        | Output descriptions get a little longer at this temperature. Could be good or bad depending on how long we want descriptions to be. Again, great quality, but with the occasional [logic error](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/building-generator/output-0_75.txt#L15) (silver _repels_ bandits?). |
| 1.00        | Has some [formatting](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/building-generator/output-1_0.txt#L10) [issues](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/building-generator/output-1_0.txt#L21) that could be a problem, but the content itself looks just fine. |

Recommended temperature for our use-case: 0.50 or 0.75