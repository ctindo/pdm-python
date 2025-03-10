FROM registry.access.redhat.com/ubi8/python-311:1-13

LABEL maintainer="akeenan@redhat.com"

COPY dependencies.txt dependencies.txt

RUN pip3 install -r dependencies.txt

RUN python3 -m spacy download en_core_web_sm

WORKDIR ./project/

COPY ./src/ ./

RUN export FLASK_APP=/project/app.py

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]
