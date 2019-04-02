#!/usr/bin/env bash

DOC="../docs/conda_requirements.txt"

conda list --explicit > $DOC
