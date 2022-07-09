# pull official base image
FROM node:14.19.3-alpine3.16

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
# COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent

# add app
COPY . ./

# expose port
EXPOSE 3000

# start app
CMD ["npm", "start"]


# sudo apt update -y

# curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
# sudo apt -y install nodejs
# sudo apt -y install gcc g++ make npm


# sudo apt update -y
# npm i -g pnpm

# or

 
# curl -fsSL https://get.pnpm.io/install.sh | sh -

# export PATH="$PNPM_HOME:$PATH"

# export PNPM_HOME="/root/.local/share/pnpm"
# export PNPM_HOME="/root/.local/share/pnpm"
# export PATH="$PNPM_HOME:$PATH"
