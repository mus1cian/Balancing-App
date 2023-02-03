FROM node
WORKDIR /app
COPY . . 
RUN npm install
ENV INSTANCE=1 
ENV PORT=3000
EXPOSE ${PORT}
CMD PORT=${PORT} INSTANCE=${INSTANCE} node bin/www

