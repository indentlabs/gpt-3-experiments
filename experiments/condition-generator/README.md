# Condition Generator

This experiment generates fictional conditions, such as diseases, blessings, auras, or illnesses. Please see `prompt.txt` to view the prompt used.

## Usage in Notebook.ai

Users are able to create random conditions to easily fill out their world, saved under "Condition" pages.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Not very creative, but works for a single output. |
| 0.25        | Diseases are real, rather than ficticious, which doesn't really suit our use-case. Probably need to tweak the prompt to focus more on novel diseases instead of real-world ones. |
| 0.50        | Some diseases are real and some are fictional. Occasionally real ones have [interesting takes](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/condition-generator/output-0_5.txt#L10). Fictional ones are generally interesting. |
| 0.75        | Some diseases seem [borderline](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/condition-generator/output-0_75.txt#L38) [offensive](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/condition-generator/output-0_75.txt#L10). |
| 1.00        | Some very interesting fictional diseases, but still includes some real diseases and boring effects for them. Has [content bucking](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/condition-generator/output-1_0.txt#L25) that makes it unusable for production. |

Recommended temperature for our use-case: None seem ready for production, but 0.5 has the best results so far. We need to tweak the prompt to focus more on fictional diseases and avoid real ones.