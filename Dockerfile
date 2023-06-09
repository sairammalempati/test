FROM frolvlad/alpine-python-machinelearning:latest
RUN pip install --upgrade pip
WORKDIR /__init__.py
COPY . /__init__.py
RUN pip install -r requirements.txt
Expose 4000 
ENTRYPOINT ["python3"]
CMD ["__init__.py"]
