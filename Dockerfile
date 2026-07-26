FROM node:26-alpine
COPY . /usr/app
WORKDIR /usr/app
ENV NODE_ENV=production
ARG IMPLEMENTATION_VERSION
RUN npm install --omit=dev ${IMPLEMENTATION_VERSION:+jsonschema@$IMPLEMENTATION_VERSION}
CMD ["node", "bowtie_jsonschema.js"]
