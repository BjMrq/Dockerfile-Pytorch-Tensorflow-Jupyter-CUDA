# Start the unflavored version of bjmrq/ml-jupyter
FROM bjmrq/ml-jupyter:basic-python3.6

# ============================================================================
# Tensorflow and Pytorch packages
# ============================================================================

# Install Pytorch from pytorch channel 
RUN conda install -y -c pytorch \
  pytorch \
  torchvision \
  magma-cuda100

# Install Tensorflow from conda-forge channel 
RUN conda install -y -c anaconda \
  tensorflow-gpu 

# Install visualisation tools from conda-forge channel 
RUN conda install -y -c conda-forge \
  tensorboard \
  tensorboardx

# Cleanning
RUN conda clean -ya 

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--port", "8888", "--notebook-dir=/home/workspace", "--no-browser", "--allow-root"]