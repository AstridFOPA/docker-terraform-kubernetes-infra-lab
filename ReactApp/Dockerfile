FROM node:20 AS builder 
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
RUN ls /app/dist 

FROM nginx:alpine AS runtime
COPY --from=builder /app/dist /usr/share/nginx/html
HEALTHCHECK CMD curl -f http://localhost || exit 1 