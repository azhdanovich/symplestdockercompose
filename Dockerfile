FROM node:alpine
#WORKDIR /usr/app
#COPY ./ /usr/app
WORKDIR /usr/app

#RUN apk add --no-cache bash sudo shadow \
#    && usermod -u 1876 node \

COPY ./ ./
RUN npm install
#RUN npm install -g npm@8.3.0 && npm install
CMD ["npm", "start"]

#FROM node:alpine
#
#WORKDIR '/app'
#
##RUN apk add --no-cache bash sudo shadow \
##    && usermod -u 1876 node \
#
#COPY package.json .
#RUN npm install
#COPY . .
#
#CMD ["npm","start"]
