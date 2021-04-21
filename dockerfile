FROM python:3.6

#Create app directory 
WORKDIR /app

#install app dependencies 
COPY requirements.txt ./

RUN pip install -r requirements.txt 

# RUN  .

#Bundle app source
COPY . /app

EXPOSE 5000
CMD [ "python3", "app.py" ]