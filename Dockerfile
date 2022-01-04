FROM python:latest
RUN apt-get update -y
RUN apt-get install -y python3-pip
COPY . /app
WORKDIR /app
COPY nginx.conf /etc/nginx/nginx.conf
RUN pip install -r requirements.txt
# ENTRYPOINT ["python"]
# CMD ["app.py"]

# FROM python:slim
# COPY requirements.txt /
# RUN pip install -r requirements.txt
# COPY . /app
# WORKDIR /app
ENV FLASK_APP=app.py
CMD flask run --host=0.0.0.0
# RUN gunicorn -b 0.0.0.0:5000 -w 1 app:app



# # ```
# # $ pip install -r requirements.txt
# # $ export FLASK_APP=app.py
# # $ flask run
# # ```