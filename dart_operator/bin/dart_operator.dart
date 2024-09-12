import 'package:dart_operator/dart_operator.dart' as dart_operator;

void main(List<String> arguments) {
  int num = 5; 
  dynamic result = num / 2;
  print('/2, $result');
  result = num % 2;
  print('%2 , $result');
  result = num ~/ 2;
  print('~/2, $result');

  num ~/= 2;
  print(num);
  print('$num');

  print('===========================================================');
  // ??= : ??(if null) + =
  
  String? printMsg = null;
  print(printMsg);

  printMsg ??= "kola";
  print(printMsg);

  printMsg ??= "cider";
  print(printMsg);

  printMsg = null;
  print(printMsg);
}
