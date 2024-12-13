# Hack Bug Report: Stack Overflow in Recursive Function

This repository demonstrates a common error in recursive functions: a stack overflow due to the lack of a proper base case.  The `foo` function calculates the factorial recursively. However, it only handles non-negative inputs.  If a negative number is passed, the recursion continues indefinitely, eventually resulting in a stack overflow error.

The solution demonstrates how to add a base case to prevent this issue, handling negative inputs gracefully.

## How to Reproduce

1. Clone this repository.
2. Compile and run the `bug.hack` file.  Observe the stack overflow error.
3. Compile and run the `bugSolution.hack` file. Observe the correct handling of negative inputs.

## Bug Analysis
The primary issue is the absence of a base case for negative integers in the recursive factorial function.  This leads to unbounded recursion and ultimately a stack overflow. The solution introduces a check for negative input, returning an appropriate value (e.g., -1) to terminate the recursion. 