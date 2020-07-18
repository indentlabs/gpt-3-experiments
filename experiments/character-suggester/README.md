# Character Suggester

This experiment accepts a character and field for input. Please see `prompt.txt` to view the prompt used and how to format a character and field for input. In this example, Joe Clementz (the final character in the prompt, used for input) follows several other characters that are used as examples. The final line contains the field to suggest answers to.

This suggester is just an example for characters, but the same logic and prompt style could be used for any kind of page.

## Usage in Notebook.ai

The character suggester (and, really, suggesters in general) will probably be used when editing pages on Notebook.ai, allowing characters to generate "reasonable" answers to fields they are stuck on or don't have an answer to.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Solid output, but lack of variety. |
| 0.25        | All looks great, also it might be worth looking into a way to incorporate universe genres so we don't get e.g. [random references to elves](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/character-suggester/output-0_25.txt#L19) in non-fantasy universes. |
| 0.50        | High quality output. High variance/creativity. |
| 0.75        | High quality output. Slightly longer descriptions than 0.50. High variance/creativity. |
| 1.00        | Seems equally as fine as 0.75, albeit with potentially random references to [undefined characters](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/character-suggester/output-1_0.txt#L17). |

Recommended temperature for our use-case: 0.75