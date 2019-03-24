FROM jupyter/datascience-notebook

# install jupyterlab extensions
RUN npm install -g npm@latest
RUN jupyter labextension install @lckr/jupyterlab_variableinspector
RUN jupyter labextension install @krassowski/jupyterlab_go_to_definition
RUN jupyter labextension install jupyterlab_vim
