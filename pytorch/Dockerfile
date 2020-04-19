# Start the unflavored version of bjmrq/ml-jupyter
FROM bjmrq/ml-jupyter:basic


# ============================================================================
# Pytorch packages
# ============================================================================

# Install Pytorch from pytorch channel 
RUN conda install -y -c pytorch \
  pytorch \
  torchvision \
  magma-cuda100

# Install visualisation tools
RUN conda install -y -c conda-forge \
  tensorboard \   
  tensorboardx

# Cleanning
RUN conda clean -ya

# Install tensorboard for Jupyter
RUN pip install jupyter_tensorboard