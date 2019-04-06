import pandas as pd
import re
import spacy
from keras.preprocessing import text, sequence
from sklearn.preprocessing import MultiLabelBinarizer


# load once, call many
mlb = MultiLabelBinarizer()
nlp_larg = spacy.load('en_core_web_lg')

#support for POS counts
pos_family = {
    'noun' : ['NN','NNS','NNP','NNPS'],
    'pron' : ['PRP','PRP$','WP','WP$'],
    'verb' : ['VB','VBD','VBG','VBN','VBP','VBZ'],
    'adj' :  ['JJ','JJR','JJS'],
    'adv' : ['RB','RBR','RBS','WRB']
}


def check_pos_tag(x, flag):
    """
    return part of speech tag count
    """
    count = 0
    try:
        wiki = textblob.TextBlob(x)
        for tup in wiki.tags:
            ppo = list(tup)[1]
            if ppo in pos_family[flag]:
                count += 1
    except:
        pass
    return count


def getSentenceVectors(row):
    """ get spaCy vectors for each sent """

    sent = row['textDOC']

    return (sent.vector)


def getNounChunks(row):
    """ get spaCy noun_chunks for each sent """

    chunks = []

    sent = row['textDOC']
    for chnk in list(sent.noun_chunks):
        chunks.append(chnk.text)

    return chunks


def convertNounChunkstoOneHot(df):
    """ return a dataframe with noun_chunks as one-hot encoded
    columns """

    one_hot_chunks = pd.DataFrame(mlb.fit_transform(df.pop('noun_chunks')),
                              columns=mlb.classes_,
                              index=df.index)
    return pd.concat([df, one_hot_chunks], axis=1)


def convertVectoOneHot(df):
    """ return a dataframe with word embedding vectors
    as one-hot encoded columns """

    vec_column = ['vec_posi' + str(i) for i in range(0,300)]
    vec_df = pd.DataFrame(df['sent_vec'].values.tolist(), columns=vec_column)
    return pd.concat([df, vec_df], axis=1)
