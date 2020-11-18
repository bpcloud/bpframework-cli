'use strict';

var path = require('path');
var febs = require('febs');
var chalk = require('chalk');
var List = require('term-list');
var utils = require('./utils');

function printSuccess() {
  console.log('**************************************************************');
  console.log('> Success`     ');
  console.log('**************************************************************');
}

function done(args, workDir) {
  workDir = workDir || process.cwd();

  console.log('');
  console.log('**************************************************************');
  console.log('> Will generator a project of bpframework');
  console.log('**************************************************************');
  console.log('');

  let projectName = utils.question('> Enter the name of project: ');
  if (!/^[a-zA-Z\$_][a-zA-Z\d_]*$/.test(projectName.toString())) {
    console.log(chalk.red('name is invalid!'));
    process.exit(0);
  }
  if (febs.file.dirIsExist(path.join(workDir, projectName))) {
    if ('n' == utils.question(chalk.red('directory is already existed! continue? (Y/n)'), (answer) => {
      return answer == 'Y' || answer == 'n';
    })) {
      process.exit(0);
    }
  }

  console.log(chalk.cyan('Select project type:'));
  console.log('');

  let list = new List({ marker: '› ', markerLength: 2 });
  list.add('koa', 'koajs (like SpringBoot)');
  list.add('koacloud', 'koajs (like SpringCloud)');
  list.add('exit', 'exit');
  list.start();

  list.on('keypress', (key, item) => {
    if (key.name == 'return') {
      list.stop();
      if (item == 'exit') {
      }
      else if (item == 'koa') {
        if (require('../templates/koa.js').generator(workDir, projectName)) {
          printSuccess();
        }
      }
      else if (item == 'koacloud') {
        if (require('../templates/koacloud.js').generator(workDir, projectName)) {
          printSuccess();
        }
      }
    }
  });
  list.on('empty', () => {
    list.stop();
  });
}


module.exports = {
  done: done,
};