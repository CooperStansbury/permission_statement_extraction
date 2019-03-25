#!/usr/bin/env bash

DIR='https://github.com/CooperStansbury/InformedConsentForms'

# note, SVN requires the 'trunk' URL format
GIT_PATH='/trunk/data/all_forms'

echo ${DIR}${GIT_PATH}

svn checkout ${DIR}${GIT_PATH}
