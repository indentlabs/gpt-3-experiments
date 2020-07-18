# Character Expander

This experiment takes a character as input and outputs additional information about that character. Please see `prompt.txt` to view the prompt used and how to structure the character's information being used as input. The final character in the prompt (Joe Clementz) is the one being expanded upon, while previous characters are used as an example of what other fields are available to expound with.

## Usage in Notebook.ai

By including other characters from the same universe in Notebook.ai, the expander is able to reference those other characters. Additionally, the same fields (and style of answer) that other characters use can be reused on this character, even if users have customized their character template to add or remove non-standard fields.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Seems fine. Produces several fields with relevant values. |
| 0.25        | More variety and longer descriptions than 0.0, so arguably better. |
| 0.50        | Even more fields and accurate values than 0.25, so arguably even better. |
| 0.75        | Unusable due to frequent [format bucking](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/character-expander/output-0_75.txt#L14). Also frequently tries to generate other characters instead of expanding the given one. |
| 1.00        | Same problems as 0.75 with [format bucking](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/character-expander/output-1_0.txt#L12). Might be able to mitigate by standardizing start and stop tokens. |

Recommended temperature for our use-case: 0.50 looks the best, but needs more rigorous testing to ensure all output looks usable.