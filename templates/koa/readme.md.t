
Install

```bash
npm install
```

Debug

Press F5 in vscode.

Build

```bash
npm run build       # for development envs.
npm run build:prd   # for production envs.
```

Project directory structure:

```
└─ ./
  └─ _dist/            # build distribute files.
  └─ config/            # bootstrap.yml and service configure
  └─ controllers/      # RestControllers
  └─ crons/            # Scheduling tasks
  └─ events/           # Events
  └─ utils/            # Common utilities
  └─ main.ts           # Main entry
```

See:

[bpframework](https://www.npmjs.com/package/bpframework)

- framework

[febs-decorator](https://www.npmjs.com/package/febs-decorator)

- service, autowired
- controller
- feignClient
- type validation