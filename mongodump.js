#!/usr/bin/env node

'use strict';

var prompt = require('prompt');
var shell = require('shelljs');
var moment = require('moment')

var argv = require('yargs')
    .usage('Usage: $0 -server [string]')
    .demandOption(['server'])
    .argv;

console.log(`Backing up ${argv.server}`);

var date = moment().format('dd-mm-yyyy')

/**
 * 
 * TODO 
 * 
 * create a string with date
 * set a folder for mongodump
 * mkdir a folder with date in mongodump folder
 * 
 * start the mongodump
 * 
 * ssh mkdir dir to copy new backup
 * 
 * scp files 
 * 
 */