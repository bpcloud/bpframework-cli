{
  "description": "${projectName}",
  "dependencies": {
    "bpframework": "^0.1.6",
    "febs": "^1.2.1",
    "koa": "^2.2.0",
    "koa-bodyparser": "^4.2.0",
    "koa-locales": "^1.12.0",
    "log4js": "^6.3.0",
    "url": "^0.11.0"
  },
  "devDependencies": {
    "@bpframework/build-cli": "^0.1.2",
    "@types/koa": "^2.0.40",
    "@types/koa-bodyparser": "^3.0.26",
    "ts-loader": "^6.2.1",
    "typescript": "^3.7.5"
  },
  "engines": {
    "node": ">=10"
  },
  "repository": {},
  "directories": {},
  "license": "UNLICENSED",
  "keywords": [],
  "main": "libs/app-cron.js",
  "name": "app",
  "scripts": {
    "dev": "bpframework-build build && node ./_dist/libs/app.dev.js",
    "build": "bpframework-build build",
    "build:prd": "bpframework-build build:prd"
  },
  "version": "1.0.0"
}
