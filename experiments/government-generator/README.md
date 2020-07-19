# Government Generator

This experiment generates fictional governments. Please see `prompt.txt` to view the prompt used.

## Usage in Notebook.ai

Users are able to create random governments to easily fill out their world, saved under "Government" pages.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Good for generating a single government. |
| 0.25        | Works really well for high-level government generation. |
| 0.50        | Works similarly well to 0.25 temperature. No qualms. |
| 0.75        | Works similarly to 0.50 temperature, with mildly longer descriptions and more variance in output. |
| 1.00        | Multiple instances of format bucking. Unusable in this state. |

Recommended temperature for our use-case: 0.5 or 0.75