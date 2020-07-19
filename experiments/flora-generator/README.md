# Flora Generator

This experiment generates fictional plants. Please see `prompt.txt` to view the prompt used.

## Usage in Notebook.ai

Users are able to create random flora to easily fill out their world, saved under "Building" pages.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Surprisingly good, but no variety. |
| 0.25        | Doesn't do well mixing ["legendary" trees](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/flora-generator/output-0_25.txt#L6) with the "Grows in" field. |
| 0.50        | Longer descriptions than 0.25, but still a lot of focus on "blood" plants, even though there's no mention of blood in the prompt anywhere. Gets better at matching descriptions with "Grows in" fields though. |
| 0.75        | A nice balance of variety and consistent quality. |
| 1.00        | Too much format bucking, starting immediately on the first line. Unusuable. |

Recommended temperature for our use-case: 0.75