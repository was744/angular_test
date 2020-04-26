FROM node:12-alpine
WORKDIR /home/node/app
COPY src/ package.json package-lock.json /home/node/app/
RUN npm install
RUN npm install -g @angular/cli
# add app
COPY . /home/node/app
CMD npm start
EXPOSE 4200