# Container image that runs your code

FROM node:12.18.1
ENV NODE_ENV production
ENV PORT ${MY_PORT}

ARG MY_PORT

WORKDIR /app

RUN echo "${MY_PORT}"

ENV HAHAHAHA ${MY_PORT}
RUN printenv

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE ${MY_PORT}

CMD [ "node", "server.js" ]
