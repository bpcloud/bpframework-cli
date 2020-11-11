#!/usr/bin/env node

'use strict';

var List = require('term-list');
var path = require('path');
var init = require('./init');
var build = require('./build');
var buildPrd = require('./buildPrd');

var commands = {
  'init': [init, 'Initial project'],
  'build': [build, 'Build project for development.'],
  'build:prd': [buildPrd, 'Build project for production.'],
}

/**
 * Parses the command line and runs a command of the CLI.
 */
function run() {
  var args = process.argv.slice(2);
  if (args.length === 0) {
    printUsage();
  }

  var command = commands[args[0]];
  if (!command) {
    console.error('Command `%s` unrecognized', args[0]);
    printUsage();
    return;
  }

  command[0].done(args);
}

function printUsage() {
  console.log([
    'Usage: bpframework <command>',
    '',
    'Commands:'
  ].concat(Object.keys(commands).map(function(name) {
    return '  - ' + name + ': ' + commands[name][1];
  })).join('\n'));
  process.exit(1);
}

if (require.main === module) {
  run();
}

module.exports = {
  run: run,
};
