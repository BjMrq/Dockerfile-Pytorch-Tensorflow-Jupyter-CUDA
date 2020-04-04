# Start the unflavored version of bjmrq/jupyter
FROM bjmrq/jupyter:unflavored

#Then flavored it!
# Install extensions
RUN jupyter nbextension enable code_prettify/code_prettify
RUN jupyter nbextension enable hinterland/hinterland
RUN jupyter nbextension enable spellchecker/main
RUN jupyter nbextension enable toggle_all_line_numbers/main
RUN jupyter nbextension enable code_prettify/isort

# Adding some styling to the mix theme and fonts
RUN apt-get update
RUN apt install fonts-firacode

RUN jt -t oceans16 -f firacode

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--port", "8888", "--allow-root"]