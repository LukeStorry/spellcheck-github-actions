# spellcheck-github-actions

## Introduction

A [Github Action][1] that spell checks a wide range of human readable files
including Python, HTML, Markdown and plain text. This action uses
[PySpelling][2] to check files in the repository that it is applied
too using a configuration file and dictionary provided by the
repository owner.

## Usage

To incorperate this action into your workflow carry out the following
steps:

1. Create a `.spellcheck.yaml` configuration file in the top level of
your repository. See [this link][3] for configuration options. If you
do **not** create this file the action will use its default. That
default may well not work for you.

1. Create a `.wordlist.txt` file in the top level of your repository
with a dictionary of acceptable words and abbreviations that are not
covered in the default aspell dictionary. If you have aspell installed
you can run it against the target files in your configuration to get a
list of words here.

1. Add the [github action][4] to either a new workflow file or an
existing one.

As an example, here is a workflow file that should work (though please
check [here][4] for the latest release version):
```
name: spellcheck

on:
  push:

jobs:
  spellcheck:
    name: runner / spellcheck
    runs-on: ubuntu-latest
    steps:
    - name: Check out code.
      uses: actions/checkout@v2
    - name: Run PySpelling as a GitHub action
      uses: sbates130272/spellcheck-github-actions@v0.6.0
```
[1]: https://github.com/marketplace?type=actions
[2]: https://facelessuser.github.io/pyspelling/
[3]: https://facelessuser.github.io/pyspelling/configuration/
[4]: https://github.com/marketplace/actions/run-pyspelling-as-a-github-action
