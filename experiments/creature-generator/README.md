# Creature Generator

This experiment generates fictional creatures. Please see `prompt.txt` to view the prompt used.

## Usage in Notebook.ai

Users are able to create random creatures to easily fill out their world, saved under "Creature" pages.

## Output analysis

| Temperature | Remarks |
|-------------|---------|
| 0.0         | Not bad for singular outputs, but lacks creativity across multiple runs. |
| 0.25        | Generates a few real-life creatures (which are entirely reasonable to add to fictional worlds), but a surprising amount of new ones as well. |
| 0.50        | A surprising amount of species and description text reuse. Not very useful. |
| 0.75        | This is where the creativity starts amping up. Lots of great, unique creatures. |
| 1.00        | Includes a few unusuable creatures and occasional format bucking, but there is a lot more variance in what gets generates. Not very useful for "finished" suggestions, but interesting ideas to build off of. |

Recommended temperature for our use-case: 0.75

I'm guessing the emphasis on number of legs put an accidental focus on insects and arachnids, producing a lot of "beetle" species at low temperatures. The prompt should be able to be modified to produce a wider variety of species, but we could always just remove the silly legs line also.