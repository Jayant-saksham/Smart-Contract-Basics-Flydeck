const path = require('path');
const fs = require('fs');
const solc = require('solc');

const hotel_path = path.resolve(__dirname, 'contract', 'counter.sol');
const source = fs.readFileSync(hotel_path, 'utf8');

console.log(solc.compile(source, 1));

