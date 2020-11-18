{
  "description": "${projectName}",
  "dependencies": {
    "bpframework": "0.0.15",
    "febs": "^1.0.11",
    "i18n": "^0.8.3",
    "koa": "^2.2.0",
    "koa-bodyparser": "^4.2.0",
    "koa-i18n": "^2.1.0",
    "koa-locale": "^1.3.0",
    "url": "^0.11.0"
  },
  "devDependencies": {
    "@bpframework/build-cli": "0.0.3",
    "@types/i18n": "^0.8.5",
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
  "main": "app.js",
  "name": "app",
  "scripts": {
    "dev": "bpframework-build build && node ./_dist/app.dev.js",
    "build": "bpframework-build build",
    "build:prd": "bpframework-build build:prd"
  },
  "version": "1.0.0"
}
