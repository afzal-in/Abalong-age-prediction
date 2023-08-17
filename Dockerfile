FROM python:3.9
WORKDIR webapp
COPY . /webapp
RUN pip install -r requirements.txt
EXPOSE 8083
CMD ["python","app.py","runserver","0.0.0.0:8083"]
