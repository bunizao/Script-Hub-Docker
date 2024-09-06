FROM node:18
RUN npm install -g pnpm
WORKDIR /app
COPY . .
RUN pnpm install
EXPOSE 9100 9101
RUN npm install -g pm2
CMD ["pm2-runtime", "pnpm", "--name", "ScriptHub", "--", "run", "service"]
