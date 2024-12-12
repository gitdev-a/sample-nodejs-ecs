FROM public.ecr.aws/docker/library/node:16

WORKDIR /usr/src/app

COPY app_code /usr/src/app/calculator

WORKDIR /usr/src/app/calculator

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
