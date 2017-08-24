'use strict';

const fs = require('fs');

const matchreg = /[a-z]([0-9]*)[ ]*(true|false)/;

let keytxt = fs.readFileSync('key.txt').toString().split('\n');
let datatxt = fs.readFileSync('data.txt').toString().split('\n');

keytxt.splice(keytxt.length - 1, 1);
datatxt.splice(keytxt.length - 1, 1);

let key = 0;
let data = 0;

for (let i = 0; i < keytxt.length; i++) {
    let match = keytxt[i].match(matchreg);
    if (null === match) continue;

    if ('true' === match[2]) {
        key |= 1 << parseInt(match[1]);
    }
}

for (let i = 0; i < datatxt.length; i++) {
    let match = datatxt[i].match(matchreg);
    if (null === match) continue;

    if ('true' === match[2]) {
        data |= 1 << parseInt(match[1]);
    }
}

console.log('key  = ' + key.toString(16));
console.log('data = ' + data.toString(16));
