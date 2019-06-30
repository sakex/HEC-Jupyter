FROM nikolaik/python-nodejs:latest
COPY jupyterhub_config.py .
COPY package.json .
RUN npm install
RUN npm i -g configurable-http-proxy
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
CMD [ "jupyterhub" ]