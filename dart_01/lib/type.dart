// lib/type.dart

void printVariable(){
  num numVal = 10;
  int intVal = 100;
  double douVal = 12.0;

  numVal = intVal;
  numVal = douVal;
  
  intVal = douVal;
  douVal = intVal;

}

void printCollection(){
  List<int> list = [1, 1, 2, 2, 3];
  print(list[0]);
  print(list[1]);

  Set<int> sets = {1,1,1,3};
  print(sets.contains(1));

  Map<String, dynamic> map = {
    'name' : 'Hong',
    'age' : 20
  };
  print(map['name']);
}

void printConstant(){
  var val = 10;
  final finalVal = (1 + val);
  const constVal = (1 + 10);

}