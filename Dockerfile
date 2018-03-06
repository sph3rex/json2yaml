FROM python:3.6.4-alpine3.7

RUN apk add --no-cache \
    git

RUN mkdir /code
WORKDIR /code

RUN git clone https://github.com/sph3rex/json2yaml && \
    pip install -r json2yaml/requirements.txt

RUN chmod +x /code/json2yaml/yaml2json

ENTRYPOINT ["/code/json2yaml/json2yaml"]
