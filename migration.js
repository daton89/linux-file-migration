#!/usr/bin/env node

var prompt = require('prompt');
var shell = require('shelljs');

var argv = require('yargs')
    .usage('Usage: $0 -source [string] -dest [string]')
    .demandOption(['source', 'dest'])
    .argv;

console.log("syncing:", argv.source, argv.dest);