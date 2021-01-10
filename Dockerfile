FROM node:14-alpine AS builder
WORKDIR /work

ADD package.json /work/
ADD package-lock.json /work/
ADD src /work/src

RUN cd /work && npm ci
RUN cd /work && npm run build

# CMD ["npm", "start"]

FROM mhart/alpine-node:slim
LABEL org.opencontainers.image.source="https://github.com/arch-inc/aws-lightsail-containers-test"
LABEL maintainer="Jun KATO <jun@archinc.jp>"

WORKDIR /app
COPY --from=builder /work/dist/index.js .

CMD ["node", "index.js"]
EXPOSE 3000
