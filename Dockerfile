FROM pytorch/pytorch:latest

RUN /opt/conda/bin/conda install -y nodejs tensorflow pandas scikit-learn matplotlib seaborn jupyter jupyterlab && \
  /opt/conda/bin/conda install -c conda-forge tensorboardx && \
  /opt/conda/bin/conda clean -ya

RUN jupyter labextension install jupyterlab_tensorboard

RUN pip install jupyter_tensorboard \
  torchvision \
  scikit-image \
  flake8 \
  jupyter_contrib_nbextensions \
  autopep8

RUN mkdir -p /home/workspace

# tensorboard
EXPOSE 6006
# jupyter notebook
EXPOSE 8888

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--port", "8888", "--allow-root"]
