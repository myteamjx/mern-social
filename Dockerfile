FROM ubuntu
RUN apt update
RUN apt install -y nodejs
RUN apt install -y npm
ENV PORT 3000
EXPOSE 3000
WORKDIR /usr/src/app
COPY . .
RUN npm install
CMD ["npm", "run", "development"]
