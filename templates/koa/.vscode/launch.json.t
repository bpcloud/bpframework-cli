{
  // 使用 IntelliSense 了解相关属性。 
  // 悬停以查看现有属性的描述。
  // 欲了解更多信息，请访问: https://go.microsoft.com/fwlink/?linkid=830387
  "version": "0.2.0",
  "configurations": [
    {
      "type": "node",
      "request": "launch",
      "name": "Debug application",
      "program": "${workspaceFolder}/src/main.ts",
      "osx": {
        "preLaunchTask": "build dev",
      },
      "cwd": "${workspaceFolder}",
      "outFiles": [
        "${workspaceFolder}/**/*.js"
      ],
      "sourceMaps": true
    },
    {
      "type": "node",
      "request": "attach",
      "name": "Attach to Remote",
      "address": "0.0.0.0",
      "port": 9229,
      "localRoot": "${workspaceFolder}/_dist",
      "remoteRoot": "app.js",
      "skipFiles": [
        "<node_internals>/**"
      ]
    },
  ]
}