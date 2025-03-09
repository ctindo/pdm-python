FROM python

LABEL maintainer="akeenan@redhat.com"

COPY dependencies.txt dependencies.txt

RUN pip3 install -r dependencies.txt

RUN python3 -m spacy download en_core_web_sm

COPY . .

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]