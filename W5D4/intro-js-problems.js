function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// errors out
function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

// errors out
function mysteryScoping5() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}

function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`;
}

// console.log(madLib('make', 'best', 'guac'));
// ('We shall MAKE the BEST GUAC.');

function isSubstring(searchString, subString) {
  console.log(searchString.split(' ').includes(subString));
}

// isSubstring('time to program', 'time');
// isSubstring('Jump for joy', 'joys');

function fizzBuzz(arr) {
  new_arr = [];
  arr.forEach(function(ele) {
    if (ele % 3 === 0 && ele % 5 != 0) {
      new_arr.push(ele);
    } else if (ele % 5 === 0 && ele % 3 != 0) {
      new_arr.push(ele);
    }
  });
  console.log(new_arr);
}

// fizzBuzz([1, 2, 3, 4, 5, 15, 18]);

function isPrime(number) {
  if (number === 2) {
    return true;
  } else if (number < 2) {
    return false;
  }
  for (i = 2; i < number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
// console.log(isPrime(2));
// console.log(isPrime(1));
// console.log(isPrime(10));
// console.log(isPrime(15485863));
// console.log(isPrime(3548563));
