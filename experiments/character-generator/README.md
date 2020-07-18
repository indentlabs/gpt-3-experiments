# Character Generator

This experiment generates fictional characters. Please see `prompt.txt` to view the prompt used.

## Usage in Notebook.ai

Users are able to create random characters to easily fill out their world. Their existing
characters (and their descriptions) can also be used to seed the prompt, resulting in characters
that reference characters and locations from the user's current world.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Not very useful. Generates another character, but it looks like the frequency of text reuse is too high. Might be able to increase the Presence Penalty to limit this, though. |
| 0.25        |         |
| 0.50        |         |
| 0.75        |         |
| 1.00        |         |