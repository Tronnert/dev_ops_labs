FROM python:3.10

ADD lab3/mr_script.py .

ADD requirements.txt .

RUN pip install -r requirements.txt

CMD ["python", "./mr_script.py"]

