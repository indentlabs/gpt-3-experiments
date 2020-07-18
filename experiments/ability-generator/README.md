# Ability Generator

This experiment generates fictional abilities. Please see `prompt.txt` to view the prompt used.

## Usage in Notebook.ai

Users are able to create random abilities to easily fill out their world, saved under "Magic" pages.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Seems surprisingly fine in singular outputs, but having more creativity/options would be better. |
| 0.25        | [Some weaknesses](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/ability-generator/output-0_25.txt#L4) aren't that great (though comical) and [some strengths](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/ability-generator/output-0_25.txt#L7) are unclear/ambiguous. |
| 0.50        | Again, [some strengths](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/ability-generator/output-0_5.txt#L7) seem to creep too far out of the domain and [some abilities](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/ability-generator/output-0_5.txt#L10) don't make sense. Low success rate. |
| 0.75        | Overall a significant improvement in quality, but [some abilities](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/ability-generator/output-0_75.txt#L10) buck the format, which is worrisome. ([x2](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/ability-generator/output-0_75.txt#L10)) |
| 1.00        | Unusable due to a [high](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/ability-generator/output-1_0.txt#L12) [frequency](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/ability-generator/output-1_0.txt#L17) [of](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/ability-generator/output-1_0.txt#L24) [format](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/ability-generator/output-1_0.txt#L28) [bucking](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/ability-generator/output-1_0.txt#L38). |

In all, the success rate for abilities is currently disappointing. The prompt needs further work before being production-ready.

Recommended temperature for our use-case: 0.75