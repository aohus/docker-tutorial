FROM python:3.8
#python:3

WORKDIR /app
COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -U -r ./requirements.txt
COPY src /app/
COPY docker/run_server.sh.dev /app/run_server.sh
COPY docker/envs.dev /app/envs
CMD ["bash", "run_server.sh"]

# WORKDIR /usr/src/app
# RUN apt-get update
# RUN apt-get install -y libmysqlclient-dev gcc python3-dev vim
# COPY requirements.txt /usr/src/app/
# RUN pip install --upgrade pip
# RUN pip install -U -r ./requirements.txt
# RUN pip install -I api-client
# COPY src/ /usr/src/app/
# COPY docker/run_server.sh.dev /usr/src/app/run_server.sh
# COPY docker/envs.dev /usr/src/app/envs
# COPY .creds/key.json /keys/key.json
# CMD ["bash", "run_server.sh"]
