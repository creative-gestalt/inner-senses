FROM node:lts-alpine as build-stage
# make app directories
RUN mkdir /home/node/seth_front && mkdir /home/node/seth_back
# copy package.json files for install
COPY ./seth_front/package.json /home/node/seth_front
#COPY ./seth_back/package.json /home/node/seth_back

# install, copy, build frontend
RUN cd /home/node/seth_front && yarn
COPY ./seth_front /home/node/seth_front

# install, copy, build backend
#RUN cd /home/node/seth_back && yarn
#COPY ./seth_back /home/node/seth_back
#RUN cd /home/node/seth_back && npm run build

FROM node:lts-alpine as prod-stage
# copy entrypoint
COPY ./entrypoint.sh /entrypoint.sh
# copy frontend to prod
COPY --from=build-stage /home/node/seth_front/ /seth_front/
# copy backend to prod
#COPY --from=build-stage /home/node/seth_back/dist /seth_back/dist
#COPY --from=build-stage /home/node/seth_back/node_modules /seth_back/node_modules
# install serve for frontend
RUN npm i -g serve
# expose ports and run servers
EXPOSE 8080 3000
CMD ["sh", "-c", "sh entrypoint.sh"]