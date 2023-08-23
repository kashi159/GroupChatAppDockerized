# Dockerfile for Node.js app
FROM node:14

WORKDIR /app

# Set environment variables if needed
ENV DB_NAME=group-chat-app
ENV DB_USER=root
ENV DB_PASSWORD=Kashif@125
ENV DB_HOST=my-mysql


COPY package.json package-lock.json /app/
RUN npm install

COPY . /app/



EXPOSE 3000 4000

CMD ["node", "app.js"]
