
import 'main.dart';

import 'package:test/test.dart';

void main() {

  test('transpose matrix', (){
    expect(transposeMatrix([
      [1, 1, 1],
      [2, 2, 2],
      [3, 3, 3]
    ]),[[1,2,3],[1,2,3],[1,2,3]]);
    expect(transposeMatrix([
      [1, 1, 1],

    ]),[[1],[1],[1]]);

  expect(transposeMatrix([
    [1],
    [2],
    [3]
  ]),[[1,2,3]]);
  expect(transposeMatrix([
    [1],
    ]),[[1]]);
  expect(transposeMatrix([
    [],
  ]),[]);
  });
  test('Generate primes upto n', (){

    expect(eratosthenes(19),[2, 3, 5, 7, 11, 13, 17, 19]);
    expect(eratosthenes(2),[2]);
    expect(eratosthenes(1),[]);
  });
}