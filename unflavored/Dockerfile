# Start from the Pytorch container containing CUDA
FROM pytorch/pytorch:latest

# Install other ML dependencies including Tensorflow and Jupyter
RUN /opt/conda/bin/conda install -y nodejs \
  tensorflow \
  pandas \
  scikit-learn \
  matplotlib \
  seaborn \
  jupyter \
  nbconvert \
  jupyterlab \
  black && \
  /opt/conda/bin/conda install -c conda-forge tensorboardx && \
  /opt/conda/bin/conda clean -ya

# Install Tensorboard
RUN jupyter labextension install jupyterlab_tensorboard

# Pip install the dependencies
RUN pip install --upgrade jupyter_tensorboard \
  jupyterthemes\
  torchvision \
  scikit-image \
  jupyter_contrib_nbextensions \
  yapf \
  autopep8

# Enable extension
RUN jupyter contrib nbextension install 

# Make it working directory
WORKDIR /home/workspace

# Open port for Tensorboard
EXPOSE 6006

# Open port for tensorboard Jupyter notebook
EXPOSE 8888

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--port", "8888", "--allow-root"]