# Start from the Pytorch container containing CUDA
FROM pytorch/pytorch:latest

# Install other ML dependencies including Tensorflow and Jupiter
RUN /opt/conda/bin/conda install -y nodejs tensorflow pandas scikit-learn nbconvert matplotlib seaborn jupyter jupyterlab && \
  /opt/conda/bin/conda install -c conda-forge tensorboardx && \
  /opt/conda/bin/conda clean -ya

# Install Tensorboard
RUN jupyter labextension install jupyterlab_tensorboard

# Pip install the dependencies
RUN pip install --upgrade jupyter_tensorboard \
  jupyterthemes \ 
  torchvision \
  scikit-image \
  flake8 \
  jupyter_contrib_nbextensions \
  autopep8

# Adding some styling to the mix
RUN apt-get update
RUN apt install fonts-firacode

# Create workspace
RUN mkdir -p /home/workspace

# Make it working directory
WORKDIR /home/workspace

# Open port for tensorboard
EXPOSE 6006

# Open port for tensorboard Jupyter notebook
EXPOSE 8888

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--port", "8888", "--allow-root"]
