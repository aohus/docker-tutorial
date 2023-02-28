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
