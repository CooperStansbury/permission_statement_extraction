#!/usr/bin/env bash

DIR='https://github.com/CooperStansbury/InformedConsentForms'

# note, SVN requires the 'trunk' URL format
ALL_FORMS='/trunk/data/all_forms'
RESEARCH_FORMS='/trunk/data/research_forms'
CLINICAL_FORMS='/trunk/data/clinical_forms'

echo ${DIR}${ALL_FORMS}

svn checkout ${DIR}${ALL_FORMS}
svn checkout ${DIR}${RESEARCH_FORMS}
svn checkout ${DIR}${CLINICAL_FORMS}

mv './all_forms' '../input_data/raw/'
mv './research_forms' '../input_data/raw/'
mv './clinical_forms' '../input_data/raw/'
