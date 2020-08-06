'use strict';
 
const apickli = require('apickli');
const {Before} = require('cucumber');
 
Before(function() {
this.apickli = new apickli.Apickli('https', 'abduls-1fc4b8cf-eval-test.apigee.net');
this.apickli.addRequestHeader('Cache-Control', 'no-cache');
});
