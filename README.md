#  GPT-3 Experiments for Worldbuilding

This repo contains example prompts for OpenAI's GPT-3 API and the resulting AI-generated texts for an assortment of worldbuilding tasks. Each task is meant to illustrate how GPT-3 can be used in the worldbuilding process for writers, game designers, roleplayers, and other worldbuilders. Each experiment's prompt is also designed to be populated with notebook data from [Notebook.ai](https://www.notebook.ai), which should result in output more personalized to fit better into worlds in progress.

All generated texts in this repo are completely unedited and uncurated unless explicitly stated otherwise.

## Experiments

The following experiments are included in this repository:

* `character-generator` generates fictional characters' names, descriptions, and appearances. 
* `item-generator` generates fictional items, including a description and the material(s) that item is made of.
* `sword-generator` generates ficticious swords with a description and legendary backstory.

## Repository layout

Each experiment is isolated to its own folder in the /experiments folder with the following files:

| Filename        | Description                                                                         |
|-----------------|-------------------------------------------------------------------------------------|
| prompt.txt      | The input used in this experiment                                                   |
| settings.yml    | Any settings overrides for this experiment (changing engines, stop-characters, etc) |
| output-0_0.txt  | 10 outputs at temperature 0.0 (deterministic output)                                |
| output-0_25.txt | 10 outputs at temperature 0.25                                                      |
| output-0_5.txt  | 10 outputs at temperature 0.5                                                       |
| output-0_75.txt | 10 outputs at temperature 0.75                                                      |
| output-1_0.txt  | 10 outputs at temperature 1.0                                                       |

Experiments can be run from the repo's root directory with the following command:

```
ruby experiment.rb name-of-experiment
```

You will also need your OpenAI secret key set in the environment variable `OPENAI_SK`, as well as the `gpt3` gem installed.

## Disclaimer

This repository has no affiliation with OpenAI and was inspired by the thought-provoking repo by @minimaxir of [the same name](https://github.com/minimaxir/gpt-3-experiments).