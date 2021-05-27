{
  "description": "${projectName}",
  "dependencies": {
    "@bpframework/middleware-koa-i18n": "^0.0.11",
    "@bpframework/validation": "^0.0.2",
    "bpframework": "^0.3.1",
    "febs": "^1.2.3",
    "koa": "^2.2.0",
    "log4js": "^6.3.0",
    "url": "^0.11.0"
  },
  "devDependencies": {
    "@bpframework/build-cli": "^0.1.5",
    "@types/koa": "^2.0.40",
    "ts-loader": "^6.2.1",
    "typescript": "^3.7.5"
  },
  "engines": {
    "node": ">=10"
  },
  "typesVersions": {
    ">=3.0": {
      "*": [
        "ts3.0/*"
      ]
    }
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
