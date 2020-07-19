# Job Generator

This experiment generates fictional occupations. Please see `prompt.txt` to view the prompt used.

## Usage in Notebook.ai

Users are able to create random jobs and occupations to easily fill out their world, saved under "Job" pages.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Not super great quality, but a passable way to generate a single job at a time. |
| 0.25        | Generates reasonable jobs, requirements, and descriptions. |
| 0.50        | Not a lot of variety in domain (mostly all fantasy-esque jobs), but otherwise high consistency and quality. Might perform better with individual users' existing jobs as a prompt. |
| 0.75        | A lot more variety but [format bucking](https://github.com/indentlabs/gpt-3-experiments/blob/master/experiments/job-generator/output-0_75.txt#L40) makes this temperature unusable for production without some changes. |
| 1.00        | Unusable. |

Recommended temperature for our use-case: 0.50