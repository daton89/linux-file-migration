#!/usr/bin/env node

'use strict';

var argv = require('yargs')
    .usage('Usage: $0 -server [string]')
    .demandOption(['server'])
    .argv;

console.log(`Backing up ${argv.server}`);

// todo add shell.js or shotgun.js to execute shell command