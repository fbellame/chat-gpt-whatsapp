# start by pulling the python image
FROM python:3.9

# copy the requirements file into the image
COPY ./app/requirements.txt /app/requirements.txt

# switch working directory
WORKDIR /app

ENV OPENAI_API_KEY=""
ENV CHAT_TOKEN=""
ENV MY_ORGANISATION=""

RUN python3 -m pip install --upgrade pip

# install the dependencies and packages in the requirements file
RUN pip3 install -r requirements.txt

# copy every content from the local file to the image
COPY ./app /app

# configure the container to run in an executed manner
ENTRYPOINT [ "python3" ]

CMD [ "gpt-chat-server.py" ]