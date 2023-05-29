FROM frolvlad/alpine-python-machinelearning:latest

RUN pip install --upgrade pip

WORKDIR /__init__.py

COPY . /__init__.py

RUN pip install -r requirements.txt

RUN python -m nltk.downloader punkt
Expose 4000 
ENTRYPOINT ["PYTHON"]


CMD ["__init__.py"]
