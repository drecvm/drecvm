FROM continuumio/anaconda3:2022.05
SHELL ["/bin/bash", "--login", "-c"]
RUN git clone https://github.com/drecvm/drecvm.git /opt/drecvm \
    && conda env create -f /opt/drecvm/environment.yml
SHELL ["conda", "run", "-n", "drecvmenv", "/bin/bash", "-c"]
RUN echo "Make sure flask is installed:"
RUN python -c "import flask"
EXPOSE 8888
ENTRYPOINT ["conda", "run", "-n", "drecvmenv", "jupyter", "notebook", "--notebook-dir=/opt/drecvm", "--ip='*'", "--NotebookApp.token=''", "--NotebookApp.password=''", "--port=8888", "--no-browser", "--allow-root"]
