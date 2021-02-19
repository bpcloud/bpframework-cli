
Install

```bash
npm install
```

Debug

Press F5 in vscode.

Build

```bash
npm run dev         # run application.
npm run build       # for development envs.
npm run build:prd   # for production envs.
```

Run

```bash
cd _dist        # cd to dist directory.
node .                        # run production app.
node ./libs/app-cron.js       # run production app.
node ./libs/app.js            # run production app without crontask.
node ./libs/app-cron.dev.js   # run development app.
node ./libs/app.dev.js        # run development app without crontask.
```

Project directory structure:

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
    └─ utils/          # Common utilities
    └─ main.ts         # Main entry
```

See:

[bpframework](https://www.npmjs.com/package/bpframework)

- framework

[febs-decorator](https://www.npmjs.com/package/febs-decorator)

- service, autowired
- controller
- feignClient
- type validation