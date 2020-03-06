FROM       python:3

RUN        pip install beautifulsoup4

RUN        pip install requests

RUN	   pip install Wikipedia

WORKDIR    /app

COPY       wikicrawler.py /app/

RUN        chmod a+x wikicrawler.py


ENTRYPOINT ["./wikicrawler.py"]

