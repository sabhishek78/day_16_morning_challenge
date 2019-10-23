// Challenge 1
// Write failing tests for the next two challenges

// Challenge 2
// Matrix Transpose
// Create a function that transposes a 2D matrix.
// transposeMatrix([
//  [1, 1, 1],
//  [2, 2, 2],
//  [3, 3, 3]
//    ]) ➞ [
//    [1, 2, 3],
//    [1, 2, 3],
//    [1, 2, 3]
//  ]
import 'dart:math';

transposeMatrix(List<List<int>> matrix) {
  int rows = matrix.length;
  int columns = matrix[0].length;

  if (rows == 0) {
    return [[]];
  } else {
    List<List<int>> result = List.filled(columns, List.filled(rows, 0));

    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < columns; j++) {
        result[j][i] = matrix[i][j];
      }
    }
    return result;
  }
}

// Challenge 3
// Sieve of Eratosthenes
// Given N as input, return an array with all primes up to N included.
//  Examples
//  eratosthenes(10) ➞ [2, 3, 5, 7]
//  eratosthenes(20) ➞ [2, 3, 5, 7, 11, 13, 17, 19]
List<int> eratosthenes(int n) {
  List<int> primes = [];
  for (int i = 2; i < n + 1; i++) {
    if (isPrime(i)) {
      primes.add(i);
    }
  }
  return primes;
}

bool isPrime(int n) {
  int flag = 0;
  for (int i = 2; i <= n / 2; ++i) {
    if (n % i == 0) {
      flag = 1;
      break;
    }
  }
  if (flag == 0) {
    return true;
  } else {
    return false;
  }
}

main() {
  print(transposeMatrix([
    [1, 1, 1],
    [2, 2, 2],
    [3, 3, 3]
  ]));
  print(transposeMatrix([
    [1, 1, 1],
  ]));
  print(transposeMatrix([
    [1],
    [2],
    [3]
  ]));
  print(transposeMatrix([[]]));
  print(transposeMatrix([
    [1]
  ]));
  print(eratosthenes(19));
  print(eratosthenes(2));
  print(eratosthenes(1));
  print(eratosthenes(0));
  print(eratosthenes(-1));
}
