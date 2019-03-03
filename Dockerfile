FROM jupyter/minimal-notebook

# launchbot-specific labels
LABEL name.launchbot.io="Applied Cryptography with Python"
LABEL workdir.launchbot.io="/home/jovyan"
LABEL description.launchbot.io="Applied Cryptography with Python"
LABEL 8888.port.launchbot.io="Start Tutorial"

#Set the working directory
WORKDIR /home/jovyan/

# Add files
COPY include /home/jovyan/include
COPY *.ipynb /home/jovyan/
RUN rmdir /home/jovyan/work

# Modules
RUN pip install cryptography

# Allow user to write to directory
USER root
RUN chown -R $NB_USER /home/jovyan \
    && chmod -R 774 /home/jovyan
USER $NB_USER

# Expose the notebook port
EXPOSE 8888

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip='0.0.0.0' --NotebookApp.token='' --NotebookApp.disable_check_xsrf=True --NotebookApp.iopub_data_rate_limit=1.0e10
