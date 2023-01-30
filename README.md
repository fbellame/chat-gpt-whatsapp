# chat-gpt-whatsapp

A chatbot for WhatsApp that use OPENAI GPT 3.0 API for conversation


Start with Python:
```sh
export OPENAI_API_KEY=[Your OpenAI API key]
export CHAT_TOKEN=[base64_generated_token]
export MY_ORGANISATION=[Your OpenAI organisation]
```

```python
cd app
pip3 install -r requirements.txt

python3 gpt-chat-server.py
```

To change the response lenght (default 30 tokens), you can also export:
```sh
export MAX_TOKEN=[number]
```


Build and run docker image:
```docker
docker build -t [docker-user]/chat-gpt-whatsapp:latest .

docker run -p 80:80 -e OPENAI_API_KEY="" -e CHAT_TOKEN="" -e MY_ORGANISATION="" [docker-user]/chat-gpt-whatsapp:latest
```

You can also use the prebuild image:
```docker
docker run -p 80:80 -e OPENAI_API_KEY="" -e CHAT_TOKEN="" -e MY_ORGANISATION="" faridbellameche/chat-gpt-whatsapp:latest
```


1) To run with WhatsApp, 
- deploy a [Cloudflare tunnel](https://www.cloudflare.com/products/tunnel/) to expose the server to internet (you need to own a valid domain) or 
- configure your router for port forwaring or
- deploy the server on any internet hosting (GCP, Azure, AWS, Digital Ocean, ...)

2) Setup a [Twilio Sanbox](https://www.twilio.com/docs/whatsapp/sandbox) on your personnal phone number
- configure an endpoint on incoming messages: https://[your-service.your-domaine]/chat?token=[CHAT_TOKEN]