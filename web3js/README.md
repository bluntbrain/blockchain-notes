# Web3.js

Topics
1. Modules
2. Web3.js with chrome console
3. ABI and Bytecode
4. Compilation
5. Deployment

Web.js is a collection of libraries that allow you to interact with a local or remote ethereum node using HTTP, IPC or WebSocket.


```shell
To install web3 - npm install --save web3
To import web3 - let Web3 =require("web3");
To connect with Ganache - let web3 = new Web3(new Web3.providers.HttpProvider("HTTP://127.0.0.1:7545")); [Remember that the ganache must be running]

To get the balance of an account - web3.eth.getBalance("paste the address of the account inside it").then(console.log);

To convert wei into ether - web3.eth.getBalance("paste the address of the account inside it").then(function(result) {console.log(web3.utils.fromWei(result,"ether"));})  

To transfer ether from one account to another - web3.eth.sendTransaction({from:"paste the address of the account inside it",to:"paste the address of the account inside it",value:web3.utils.toWei("1","ether")});


let contract = new web3.eth.Contract([
...     {
.....           "inputs": [
.....                   {
.......                                 "internalType": "uint256",
.......                                 "name": "_x",
.......                                 "type": "uint256"
.......                         }
.....           ],
.....           "name": "set",
.....           "outputs": [],
.....           "stateMutability": "nonpayable",
.....           "type": "function"
.....   },
... {
.....           "inputs": [],
.....           "name": "x",
.....           "outputs": [
..... 
AbortController       AbortSignal           AggregateError        Array
ArrayBuffer           Atomics               BigInt                BigInt64Array
BigUint64Array        Boolean               Buffer                DataView
Date                  Error                 EvalError             Event
EventTarget           FinalizationRegistry  Float32Array          Float64Array
Function              Infinity              Int16Array            Int32Array
Int8Array             Intl                  JSON                  Map
Math                  MessageChannel        MessageEvent          MessagePort
NaN                   Number                Object                Promise
Proxy                 RangeError            ReferenceError        Reflect
RegExp                Set                   SharedArrayBuffer     String
Symbol                SyntaxError           TextDecoder           TextEncoder
TypeError             URIError              URL                   URLSearchParams
Uint16Array           Uint32Array           Uint8Array            Uint8ClampedArray
WeakMap               WeakRef               WeakSet               WebAssembly
_                     _error                assert                async_hooks
atob                  btoa                  buffer                child_process
clearImmediate        clearInterval         clearTimeout          cluster
console               constants             crypto                decodeURI
decodeURIComponent    dgram                 diagnostics_channel   dns
domain                encodeURI             encodeURIComponent    escape
eval                  events                fs                    global
globalThis            http                  http2                 https
inspector             isFinite              isNaN                 module
net                   os                    parseFloat            parseInt
path                  perf_hooks            performance           process
punycode              querystring           queueMicrotask        readline
repl                  require               setImmediate          setInterval
setTimeout            stream                string_decoder        sys
timers                tls                   trace_events          tty
undefined             unescape              url                   util
v8                    vm                    wasi                  worker_threads
zlib

__proto__             hasOwnProperty        isPrototypeOf         propertyIsEnumerable
toLocaleString        toString              valueOf

constructor

Web3                  web3

.....           {
.......                                 "internalType": "uint256",
.......                                 "name": "",
.......                                 "type": "uint256"
.......                         }
.....           ],
.....           "stateMutability": "view",
.....           "type": "function"
.....   }
... ], "0x5Aec1a1C7dd7CB59F30f6817c21F029ccDbF4bb3");


```
Hoe to call functions from a contract 
```shell
contract.methods.x().call().then(console.log)
contract.methods.set(12).send({from:"0xFCf50CbbE08C774009413cF91c946b6d59a0571B"});
```