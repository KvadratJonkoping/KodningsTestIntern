const bigInt = require('big-integer');

function *fibonacci(n) {
  const infinite = !n && n !== 0;
  let current = bigInt(0);
  let next = bigInt(1);
  
  while (infinite || n--) {
    yield current;
    [current, next] = [bigInt(next), bigInt(current).add(next)];
  }
}

const sum = (prev, curr) => bigInt(prev).add(curr);

const run = (number) => {
  const seq = [...fibonacci(number + 3)];

  return seq.filter(n => n.gt(1))
    .map(n => [...n.toString()].map(n => bigInt(n)))
    .map(parts => parts.reduce(sum) % 10)
    .reduce(sum) % 10;
}

console.log(`10 = ${run(10)}`);
console.log(`50 = ${run(50)}`);
console.log(`1000 = ${run(1000)}`);
