FROM node:alpine

RUN npm install -g json-server
WORKDIR /var/lib/app
ADD run_server.sh /usr/local/bin/run_server.sh
CMD ["run_server.sh"]
EXPOSE 3000
