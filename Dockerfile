FROM tensorflow/tensorflow:2.4.1-jupyter
ADD . /opt/erus
WORKDIR /opt/erus
RUN apt-get update
RUN apt-get -y install portaudio19-dev python-pyaudio python3-pyaudio
RUN /usr/bin/python3 -m pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install jupyterlab
RUN ln -s /opt/erus/ /tf/
#CMD ["jupyter", "lab", "--LabApp.token=''"]