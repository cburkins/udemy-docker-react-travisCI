# This whole section can be referred to later as "builder"
FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
# No need for mounted volumes since Production builds happen much less often
COPY . .
RUN npm run build

# "FROM" essentially terminates the previous block
FROM nginx
# ElasticBeanstalk will be specifically looking for this instruction
EXPOSE 80
# /app/build (from previous build) contains the React static production build
COPY --from=builder /app/build /usr/share/nginx/html
# default command of nginx container starts up nginx

