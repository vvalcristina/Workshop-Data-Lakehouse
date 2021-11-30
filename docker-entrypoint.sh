#!/bin/bash

python -m spacy download pt
#sudo pip install pyspark==3.0.0
#sudo pip install delta-spark
### Spark monitor
#pip install jupyterlab-sparkmonitor # no supported for spark 3.1.1
sudo pip install -r requirements.txt
#pip install sparkmonitor
#
#sudo -E pip install jupyter_contrib_nbextensions
#sudo -E jupyter contrib nbextension install --sys-prefix
#jupyter nbextension install --py sparkmonitor --user --symlink
#jupyter nbextension enable sparkmonitor --user --py
#jupyter serverextension enable --py --user sparkmonitor
#jupyter lab build
#ipython profile create
###
python setup.py -q develop

if [ "$1" = 'jupyter' ]; then
 jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root \
                               --NotebookApp.notebook_dir='./notebooks' \
                               --NotebookApp.token='' \
                               --NotebookApp.password=''
fi
delta-spark 1.0.0-
if [ "$1" = 'bash' ]; then
 /bin/bash
fi