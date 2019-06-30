FROM nikolaik/python-nodejs:latest
RUN npm install -g configurable-http-proxy
COPY requirements.txt .
COPY jupyterhub_config.py .
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /
COPY . /
EXPOSE 8000
CMD [ "jupyterhub" ]