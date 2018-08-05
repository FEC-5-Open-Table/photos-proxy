# What image do you want to start building on?
FROM node:7.6-alpine

# Make a folder in your image where your app's source code can live
RUN mkdir -p /app/proxy

# Tell your container where your app's source code will live
WORKDIR /app/proxy

# What source code do you what to copy, and where to put it?
COPY . /app/proxy

# Does your app have any dependencies that should be installed?
RUN npm install

# What port will the container talk to the outside world with once created?
EXPOSE 55055

# How do you start your app?
CMD ["npm", "start"]
