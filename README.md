# permission_statement_extraction
This is a Jupyter Notebook in Python3 for extracting possible statements of permission from informed consent documents. The goal is to generate a training set that will generalize beyond the current dataset for extracting terms related to 'permitting' in the consent context. This work is loosely organized and changing rapidly.

Sloppily compiled dependencies can be found in [docs](docs/)

The command-line training and prediction scripts depend on having [BERT](https://github.com/google-research/bert) cloned, including a language model.

1. J. Devlin, M.-W. Chang, K. Lee, and K. Toutanova, “BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding,” arXiv:1810.04805 [cs], Oct. 2018.


TO DO:
remove duplicate forms and duplicate sentences
