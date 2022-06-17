// solidity compiler
solc = require("solc");

// file system - read and write files to your computer
fs = require("fs");

// web3 interface
Web3 = require("web3");

// setup a http provider
let web3 = new Web3(new Web3.providers.HttpProvider("http://127.0.0.1:7545"));

// reading the file contents of the smart contract
let fileContent = fs.readFileSync("demo.sol").toString();
console.log(fileContent);

// create an input structure for my solidity compiler
var input = {
  language: "Solidity",
  sources: {
    "demo.sol": {
      content: fileContent,
    },
  },

  settings: {
    outputSelection: {
      "*": {
        "*": ["*"],
      },
    },
  },
};

// compiling using solc compiler
var output = JSON.parse(solc.compile(JSON.stringify(input)));
console.log("Output: ", output);

// fetching ABI and bytecode
ABI = output.contracts["demo.sol"]["demo"].abi;
bytecode = output.contracts["demo.sol"]["demo"].evm.bytecode.object;
console.log("Bytecode: ", bytecode);
console.log("ABI: ", ABI);
