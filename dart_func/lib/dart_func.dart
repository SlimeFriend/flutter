// 일급객체
// 1) 변수가 함수를 참조할 수 있다

void welcomeMsg(){
  print('Hello, Dart!!');
}

void firstMain(){
  // 변수에 함수를 할당
  var myFun = welcomeMsg;
  
  // 함수 호출 
  welcomeMsg();
  myFun();
}

// 2) 매개변수로 함수를 받을 수 있음.


void forEach(var callback){
  var list = [1, 2, 3, 4, 5];

  for(int i = 0; i< list.length; i++){
    callback(i, list);
  }
}
void plus(int num, var list){
  int result = num + 100;
  print(result);
  print('list: $list');
}
void secondMain(){
  forEach(plus);
}


// 3) 함수를 함수의 반환 값으로 사용

makeAddFunc(int init){
  String msg = 'result';
  // 익명함수 
  return (x){
    // 'result : (변수 init과 x를 더한 결과값)';
    return '$msg : ${init+x}';
  };
}

void thirdMain(){
  int initValue = 10;

  var add = makeAddFunc(initValue);
  // add : 하나의 함수로 매개변수로 넘어오는 모든 값에 10을 더하는 함수

  print('$initValue + 5 : ${add(5)}');
  print('$initValue + 20 : ${add(20)}');
}