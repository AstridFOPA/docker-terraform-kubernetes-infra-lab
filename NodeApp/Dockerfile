FROM  node
LABEL app=my-node-app
WORKDIR /app 
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 3000 
CMD node ./bin/www
# ENTRYPOINT [ "node" ] define the default command to run when the container starts
# CMD [ "/app/bin/www" ] provide default arguments to the ENTRYPOINT command