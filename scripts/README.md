# Scripts
A collection of tools to help automate analysis

## get_forms.sh

Pull data form the repository: [CooperStansbury/InformedConsentForms](https://github.com/CooperStansbury/InformedConsentForms)

The bash tool collects forms and deposits them in `../input_data`. This tools expects to be run from this directory.

```
./get_forms.sh
```

## train_bert.sh
Assumes run from the local dir, no args. Requires a folder in the root of the repo named `bert` with the [cloned bert repo](https://github.com/google-research/bert) contents. *In addition* it is assumed that the `bert/` dir contains the language model as a subdir: `bert/uncased_L-12_H-768_A-12` and a folder named `data/` with the appropriate files.

```
./train_bert.sh
```

## predict_bert.sh
Same assumptions as `train_bert.sh`.

```
./predict_bert.sh
```
