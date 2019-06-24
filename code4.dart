import 'dart:io';
List<Function> Calculator(){
  var add = (a,b)=>a+b;
  var sub = (a,b)=>a-b;
  var mul = (a,b)=>a*b;
  var div = (a,b)=>a~/b;
  return [add,sub,mul,div];
}
Function Order(){
  var add = (){
    print("Add Order Logic");
  };
  return add;
}
Function myfunction(){
  return (a,b)=>a*b;
}

void loop(Function fn){
  for(int i = 1; i<=10; i++){
    print(fn(i));
  }
}
var evenOdd = (num)=>num%2==0?"Even No $num":"Odd No $num";
void main(){
  List<Function> fnList = Calculator();
  fnList.forEach((fn)=>print(fn(10,20)));
  loop(evenOdd);
  loop((num)=>num*num*num);
  print("Enter the First Number");
  
  int firstNumber = int.parse(stdin.readLineSync());
   print("Enter the Second Number");
  int secondNumber = int.parse(stdin.readLineSync());
  int result = firstNumber+ secondNumber;
  print("Result is $result");
}