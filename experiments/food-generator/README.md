# Food Generator

This experiment generates fictional foods. Please see `prompt.txt` to view the prompt used.

## Usage in Notebook.ai

Users are able to create random foods to easily fill out their world, saved under "Food" pages.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Generates an accurate description of real food. Could be useful but we want way more creativity than this. |
| 0.25        | Huge problems with [repetition](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/food-generator/output-0_25.txt#L11). Unusuable without some kind of change. |
| 0.50        | Same problems with recipe [repetition](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/food-generator/output-0_5.txt#L7) as 0.25. Many recipes have a more subtle problem with repeating steps once or twice as well. Unusable. |
| 0.75        | Nice variety. Nice consistency. Comes up with some interesting recipes which require parts from fictional creatures, which seems like a bonus for our use-case. |
| 1.00        | Incorrect formatting, uninteresting descriptions, and bad recipes. Unusable. |

Recommended temperature for our use-case: 0.75, but needs further consistency testing since all other temperatures seem so wildly bad.