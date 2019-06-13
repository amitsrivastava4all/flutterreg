import 'dart:io';

void main(){
  int result =0;
  print("Enter the First Number");
  
  int firstNumber =  int.parse(stdin.readLineSync());
  print("Enter the Second Number");
  int secondNumber =  int.parse(stdin.readLineSync());
  try{
   result = firstNumber~/ secondNumber;
  }on IntegerDivisionByZeroException{
    print("U divide a number with zero");
  }
  catch(e){
    print("Contact to System Admin");
  }
  finally{
    print("Always Execute....");
  }
  print("Result is $result");
}