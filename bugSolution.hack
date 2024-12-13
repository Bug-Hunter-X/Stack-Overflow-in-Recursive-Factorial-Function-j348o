function foo(x: int): int {
  if (x < 0) {
    return -1; // Handle negative input
  } else if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(): void {
  echo foo(5);
echo foo(-5);
}

//This solution handles negative inputs correctly. The function now explicitly checks for
//negative values and returns -1 in such cases, preventing the infinite recursion and
//subsequent stack overflow error.
