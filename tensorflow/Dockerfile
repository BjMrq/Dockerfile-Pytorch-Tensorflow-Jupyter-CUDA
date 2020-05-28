# Start the unflavored version of bjmrq/ml-jupyter
FROM bjmrq/ml-jupyter:basic


# ============================================================================
# Tensorflow packages
# ============================================================================

# Install Tensorflow from conda-forge channel 
RUN conda install -y -c anaconda \
  tensorflow-gpu 

# Install visualisation tools
RUN conda install -y -c conda-forge \
  tensorboard \   
  tensorboardx 

# Cleanning
RUN conda clean -ya

# Install tensorboard for Jupyter
RUN pip install jupyter_tensorboard