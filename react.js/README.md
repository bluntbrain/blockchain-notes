# Javascript

Closure</br>
In this example, makeAdder is a function factory. It creates functions that can add a specific value to their argument. In the above example, the function factory creates two new functions—one that adds five to its argument, and one that adds 10.

add5 and add10 are both closures. They share the same function body definition, but store different lexical environments. In add5's lexical environment, x is 5, while in the lexical environment for add10, x is 10.

```shell
function makeAdder(x) {
  return function (y) {
    return x + y;
  };
}

const add5 = makeAdder(5);
const add10 = makeAdder(10);

console.log(add5(2)); // 7
console.log(add10(2)); // 12

```
</br>
Hoisting</br>

1. Hoisting is JavaScript's default behavior of moving all declarations to the top of the current scope (to the top of the current script or the current function).
2. In terms of variables and constants, keyword var is hoisted and let and const does not allow hoisting.
3. Also, when the variable is used inside the function, the variable is hoisted only to the top of the function. 
4. A function can be called before declaring it. 

```shell
// this works
greet();

function greet() {
    console.log('Hi, there.');
}

// but this does not
greet();

let greet = function() {
    console.log('Hi, there.');
}
```

# Flattening
The flat() method creates a new array with all sub-array elements concatenated into it recursively up to the specified depth. 
```shell
const arr1 = [0, 1, 2, [3, 4]];

console.log(arr1.flat());
// expected output: [0, 1, 2, 3, 4]

const arr2 = [0, 1, 2, [[[3, 4]]]];

console.log(arr2.flat(2));
// expected output: [0, 1, 2, [3, 4]]
```

# Component Lifecycle
1. Mounting - Birth of component

The render() method is required, and is the method that actually outputs the HTML to the DOM.

The componentDidMount() method is called after the component is rendered.

2. Update - Growth of component

The componentDidUpdate method is called after the component is updated in the DOM.

3. Unmounting - Death of component

The componentWillUnmount method is called when the component is about to be removed from the DOM.

# React Hooks 
Video: https://www.youtube.com/watch?v=TNhaISOUy6Q

1. useState = when data changes re-render the UI
2. useEffect = run when mounted & run when state changes & run before component is removed from UI
3. useContext = share data without passing props
4. useReducer = part of Redux, a different way to manage state
5. useCallback = to memoize entire function
6. useMemo = Memoization = cache results of function call
7. useRef = mutable value that does not re-render UI
8. useImperativeHandle = rarely used
9. useLayoutEffect = blocks visual updates until your callback is finished
10. useDebugValue

# Custom Hook
```shell
function useFriendStatus(friendID) {
  const [isOnline, setIsOnline] = useState(null);

  // ...

  return isOnline;
}

// how to use custom hook
const isOnline = useFriendStatus(props.friend.id);
```

# polyfill for promise.all
```shell
const dummyAPI = (time) => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve(time)
    }, time);
  })
}

const taskArray = [dummyAPI(1000), dummyAPI(2000), dummyAPI(3000)];

const promisePolyfill = (arr) => {
  return new Promise((resolve, reject) => {
    const output = [];
    array.forEach((promise, index) => {
      promise.then((data) => {
        output[index] = data
        if(index = array.length - 1) resolve(output)
      }).catch((err) => {
        reject(err)
      })
    })
  })
}

promisePolyfill(taskArray).then((resp) => {
  console.log(resp)
}).catch((err) => {
  console.log(err)
})
```
hhttps://medium.com/nerd-for-tech/polyfill-for-array-map-filter-and-reduce-e3e637e0d73b

# polyfill for array.reduce
```shell
Array.prototype.myReduce= function(callbackFn, initialValue) {
  var accumulator = initialValue;for (var i = 0; i < this.length; i++) {
    if (accumulator !== undefined) {
      accumulator = callbackFn.call(undefined, accumulator, this[i],   i, this);
    } else {
      accumulator = this[i];
    }
  }
  return accumulator;
}
```

