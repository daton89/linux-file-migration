#!/usr/bin/env node

var prompt = require('prompt');
var shell = require('shelljs');

var argv = require('yargs')
    .usage('Usage: $0 -w [num] -h [num]')
    .demandOption(['w', 'h'])
    .argv;

console.log("The area is:", argv.w * argv.h);