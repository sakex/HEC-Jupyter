FROM python:3

WORKDIR /

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /public/
COPY /public/ /public/
COPY jupyter_notebook_config.py /root/.jupyter/

EXPOSE 8000

CMD [ "jupyter", "notebook", "--allow-root", "--ip=0.0.0.0", "--port=8000" ]