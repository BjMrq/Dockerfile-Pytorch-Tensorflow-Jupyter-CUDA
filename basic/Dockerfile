# Start the unflavored version of bjmrq/ml-jupyter
FROM bjmrq/ml-jupyter:base


# ============================================================================
# Classic ML packages
# ============================================================================

RUN conda install -y  \
  scikit-learn \
  pandas \
  matplotlib \
  seaborn \
  numpy \
  pyyaml \
  scipy \
  ipython \
  nodejs \
  nbconvert \
  scikit-image \
  mkl-include \
  cython

RUN conda install -y -c conda-forge \
  jupyter_contrib_nbextensions

# Enable extension
RUN jupyter contrib nbextension install 

# Cleanning
RUN conda clean -ya

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--port", "8888", "--notebook-dir=/home/workspace", "--no-browser", "--allow-root"]