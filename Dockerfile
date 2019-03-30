FROM node:11.13.0-alpine
LABEL maintainer="Takeshi Ihara <afrontier829@gmail.com>"
LABEL Description="Docker Container for textlint"

ENV TXT=""

COPY ./.textlintrc ./package.json ./package-lock.json /app/

WORKDIR /app

RUN npm install

CMD npm run lint -- ./volume/$TXT
