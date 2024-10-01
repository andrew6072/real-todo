# Specify Node Version and Image
FROM node:22.6.0 AS development

# Specify the working dir inside the container
WORKDIR /andrew/src/app

# copy files from the host machine to the working directory in the container
COPY package*.json ./
COPY tsconfig.build.json ./
COPY tsconfig.json ./

RUN npm ci
RUN npm run build

EXPOSE 3000

FROM node:22.6.0 AS production

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

WORKDIR /andrew/src/app

COPY --from=development /andrew/src/app /andrew/src/app

EXPOSE 3000

CMD ["node", "dist/main"]