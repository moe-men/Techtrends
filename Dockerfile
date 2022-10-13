# set the base image. Since we're running

FROM python:3.8
WORKDIR /usr/src/app
LABEL maintainer="techTrends"
COPY ./techtrends/requirements.txt ./
RUN pip install -r requirements.txt
COPY ./techtrends ./
RUN python init_db.py
RUN pip install -r requirements.txt
EXPOSE 3111
CMD [ "python", "app.py" ]
