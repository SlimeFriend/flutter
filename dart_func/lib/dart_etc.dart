// 1) 익명함수
/*
  (var x, var y){
    return x + y;
  }
*/

var myAnyPlus = (var x, var y){
                  return x+y;
                };

// 2) 람다식 : (var x, var y) => x + y;

var myLamPlus = (var x, var y) => x + y;

void etcMain(){
  print(myAnyPlus(5,10));
  print(myLamPlus(5,10));
}
