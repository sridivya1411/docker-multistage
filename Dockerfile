# trying to run a node application. So, first we need node. 
#Then npm is used to installed node based packages.
# So, we give package.json for requirements. Once we add those files in image, on node, install them using npm. 
# But, to check this locally, we need to expose a port. Npm start will start the application with "node index.js"

FROM node:8

EXPOSE 3000
WORKDIR /app
COPY package.json index.js ./
RUN npm install

CMD ["npm", "start"]

