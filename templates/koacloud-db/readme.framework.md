- [Install](#install)
- [Debug](#debug)
- [Build](#build)
- [Run](#run)
- [Project directory structure](#project-directory-structure)
- [See:](#see)


### Install

```bash
npm install
```

### Debug

Press F5 in vscode.

### Build

```bash
npm run dev         # run application.
npm run build       # for development envs.
npm run build:prd   # for production envs.
```

### Run

```bash
npm run dev                   # run development app.
```
or

```bash
cd _dist        # cd to dist directory.
node .                        # run production app.
node ./libs/app.js            # run production app.
node ./libs/app-cron.js       # run production app with crontask.
node ./libs/app.dev.js        # run development app.
node ./libs/app-cron.dev.js   # run development app with crontask.
```

### Project directory structure

```
└─ ./
  └─ _dist/            # build distribute files.
  └─ resource/
    └─ locales/        # i18n.
    └─ bootstrap.yml   # application configure file.
  └─ src/
    └─ configure/       # service configure
    └─ controllers/    # RestControllers
    └─ crons/          # Scheduling tasks
    └─ events/         # Events
    └─ feignclients/   # FeignClients.
    └─ libs/           # Common utilities
    └─ main.ts         # Main entry
```

### See:

[bpframework](https://www.npmjs.com/package/bpframework)

- framework

```
> npm i bpframework-cli -g
> bpframework init
```

[middleware](https://github.com/bpcloud/middleware.git)

- i18n
- session
- logger
- ...

[examples](https://github.com/bpcloud/bpframework/tree/dev/examples)

Some decorators.

- service, autowired
- controller
- feignClient
- type validation