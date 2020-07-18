# Character Generator

This experiment generates fictional characters. Please see `prompt.txt` to view the prompt used.

## Usage in Notebook.ai

Users are able to create random characters to easily fill out their world. Their existing
characters (and their descriptions) can also be used to seed the prompt, resulting in characters
that reference characters and locations from the user's current world.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Not very useful. Generates another character, but it looks like the frequency of [text reuse](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/character-generator/output-0_0.txt#L4) is too high. Might be able to increase the Presence Penalty to limit this, but it's currently not available as a parameter over the API. |
| 0.25        | Looks better, but there can be minor issues (such as [characters with no last name](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/character-generator/output-0_25.txt#L38)). Seems to also have a tendency to create the same character multiple times, but since each run would be re-seeded with the full list of characters, this shouldn't be a problem. |
| 0.50        | Looks very similar to temperature 0.25. Has the same problem with occasional [one-name people](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/character-generator/output-0_5.txt#L18) but seems to have a wider variance in generated characters, instead of suggesting the same character as many times. |
| 0.75        | Looks ideal for our use-case. Good variance, but also good consistency. |
| 1.00        | Unusable. Goes [off the rails formatting-wise](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/character-generator/output-1_0.txt#L5) too often, gets a bit too ambitious with [new references](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/character-generator/output-1_0.txt#L38), and doesn't seem to offer any benefits over temperature 0.75. |

Recommended temperature for our use-case: 0.75