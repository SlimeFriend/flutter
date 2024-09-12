// 패키지 내의 라이브러리를 사용
import 'package:dart_01/dart_01.dart' as dartEx01;

add(int a, int b){
  return a+b;
}

void main(){
  int numberA = 10;
  int numberB = 20;
  var result = add(numberA, numberB);
  dartEx01.printResult(result);
}