# Data
This directory contains inputs and outputs for various stages of the analysis.

## raw
This directory contains the informed consent forms. The dir `all_forms/` contains the set of all forms in `research_forms/` and `clinical_forms/`. These files are generated using the tool in `../scripts/get_all_forms/`.

## outputs
Various processes need to generate files. This is where they go.

## data_turk
This is annotation files downloaded (manually) from the DataTurk server.

## bert_inputs
These files are build using `prepare_annotations_for_bert.ipynb`  in `../notebooks`. These files are formatted to be used with BERT, the unofficial NLP tool created by Google.
