# Start the unflavored version of bjmrq/jupyter
FROM bjmrq/ml-jupyter:unflavored

#Then flavored it!

# Pip install the dependencies
RUN /opt/conda/bin/conda install -y -c conda-forge \
  jupyterthemes \
  yapf \
  isort \
  autopep8 

# Install extensions
RUN jupyter nbextension enable code_prettify/code_prettify
RUN jupyter nbextension enable spellchecker/main
RUN jupyter nbextension enable toggle_all_line_numbers/main
RUN jupyter nbextension enable code_prettify/isort

# Adding some styling to the mix theme and fonts
# Update container
RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  fonts-firacode && \
  rm -rf /var/lib/apt/lists/*

RUN jt -t oceans16 -f firacode