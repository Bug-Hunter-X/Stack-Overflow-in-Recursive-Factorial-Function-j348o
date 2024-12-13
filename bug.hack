function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(): void {
  echo foo(5);
}

//This will cause a stack overflow error if the input is too large
//The bug is that the recursive function foo does not have a base case for negative inputs
//The function will continue to call itself until it runs out of stack space
