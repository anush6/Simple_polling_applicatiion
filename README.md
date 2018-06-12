## Classification of Named Entities

### Installation
To be completed

### Algorithm Approach
We are using a MaxEnt classifier for classification of entities. Among
the choices we had for MaxEnt classifier, we make use of the MegaM wrapper
in NLTK.

#### Data Creation
For the purpose of creating data, we need to manually go through PDF files to
find sentences which contain the keyword of the datapoint. For instance,
consider this sentence - "State Street Custodial Services (Ireland)
Limited has been appointed to act as trustee of the Trust pursuant to
the Trust Deed". This sentence contains the keyword "Custodian" and it
also contains the actual datapoint for Custodian.

Similarly, we can also consider an example which does not contain the
custodian or the keyword. For example, take the sentence - "The term
of the Custodian who also serves as the Depository, ends on 14th of July,
2007". This sentence can be considered as a negative example.

After compiling the list of sentences, save them to `CSV` file. We have
included an example `CSV` file in the `Sample` folder.

Note: Each line should consist of one sentence. Make sure to remove `\n`
before you paste the raw text


#### Features
We include several features in our model. Most of them are categorical
features such as individual tokens, bigrams, etc. However, we do include
a few ordinal features as well. Below is the list of features in our
model -

- Left Tokens
- Left Bigrams
- Left POS
- Right Tokens
- Right Bigrams
- Right POS
- Distance of the keyword from the named entity
- Dependency parser information

#### Model

We train the MaxEnt classifier using the
[megam](http://legacydirs.umiacs.umd.edu/~hal/megam/version0_3/)
 wrapper for NLTK.

### TODO
-  Include an additional column called `retag` with 1 or 0
value if you wish to retag it
- Include list of `keywords` for the datapoints
- Ablation study on the features

### Requirements
```
pip install -r requirements.txt
```
### Installations
- We need to install spacy's en model and megam module for nltk to train the model
- Install spacy's en model   

```
python -m spacy download en
```
- MEGAM is based on the OCaml system, which is the main implementation of the Caml language. 
- First install ocaml 

```
wget http://caml.inria.fr/pub/distrib/ocaml-4.02/ocaml-4.02.1.tar.gz
tar -zxvf ocaml-4.02.1.tar.gz
cd ocaml-4.02.1
./configure
make world.opt
sudo make install
```


- Download megam
```
wget http://hal3.name/megam/megam_src.tgz
tar -zxvf megam_src.tgz
cd megam_0.92 
```

- In terminal type "ocamlc -where" to get the location of ocaml
- copy and change the path in Makefile line 74 under megam_0.92 folder
```
 #WITHCLIBS =-I /usr/lib/ocaml/caml
WITHCLIBS =-I /usr/local/lib/ocaml/caml
```
- change line 62
```
 #WITHSTR =str.cma -cclib -lstr
WITHSTR =str.cma -cclib -lcamlstr 
```
- Close Makefile
- In terminal under megam_0.92 folder
```
make
make opt
sudo cp megam /usr/local/bin/
sudo cp megam.opt /usr/local/bin/ 
```
- To train 
```
python train.py --train_file cust.data.json --train_file datapoint.data.json --keywords_file custodian_keywords.json
```

- If there is any error in spacy
- Change 
``` 
 #en_nlp = spacy.load('en')
en_nlp = spacy.load('en_core_web_sm')
```
