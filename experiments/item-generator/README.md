# Item Generator

This experiment generates fictional items. Please see `prompt.txt` to view the prompt used.

## Usage in Notebook.ai

Users are able to create random items to easily fill out their world, saved under "Item" pages.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Usable for generating items one at a time. |
| 0.25        |.Names and makeup don't match for [some items](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/item-generator/output-0_25.txt#L11). Multiple instances of description [text reuse](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/item-generator/output-0_25.txt#L16). |
| 0.50        | [Some descriptions](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/item-generator/output-0_5.txt#L4) don't make sense. [Some](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/item-generator/output-0_5.txt#L8) are boring. Others seem fine. |
| 0.75        | [Some items](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/item-generator/output-0_75.txt#L10) are missing a name. Others seem fine. |
| 1.00        | Frequent format bucking. Unusable. |

Recommended temperature for our use-case: Either 0.25 or 0.75 temperature seem the best currently, but the prompt needs tweaking more as as-is things are pretty underwhelming.