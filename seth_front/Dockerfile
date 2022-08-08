FROM node:lts-alpine as build-stage
WORKDIR /seth_front
COPY package.json ./
RUN npm set progress=false && npm install
COPY . .
RUN npm run build

FROM node:lts-alpine as prod-stage
COPY --from=build-stage /seth_front/dist /seth_front/dist
RUN npm install -g serve