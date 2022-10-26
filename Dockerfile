FROM python:3.7-slim
WORKDIR /app
RUN apt-get update
RUN apt-get install git sed build-essential -y
RUN apt-get install  xorg-dev libglu1-mesa-dev  libglew-dev cmake -y
RUN pip install dill pathos
ADD . /app
RUN pip install -r requirements.txt
CMD ["cat", "output.txt"]