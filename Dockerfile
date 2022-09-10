FROM continuumio/anaconda3:2022.05
SHELL ["/bin/bash", "--login", "-c"]
RUN mkdir -p /opt/fds \
    && git clone https://github.com/drecvm/drecvm.git /opt/drecvm \
    && conda create -y --quiet --name drecvmenv -c anaconda python=3.9.12 anaconda=2022.05 
SHELL ["conda", "run", "-n", "drecvmenv", "/bin/bash", "-c"]
EXPOSE 8888
ENTRYPOINT ["jupyter", "notebook", "--notebook-dir=/opt/drecvm", "--ip='*'", "--NotebookApp.token=''", "--NotebookApp.password=''", "--port=8888", "--no-browser", "--allow-root"]
