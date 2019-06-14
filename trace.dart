void main(){
  String a ;
  try{
    print("Before");
   // var t = a.length;
  int e = 10~/0; // throw new IntegerDivisionByZeroException();
  print("I never print...");
  } on IntegerDivisionByZeroException catch(ex,st) {
    print("SOme Problem  $ex $st");
  }
  catch(ex,st){
    // what is exception (ex)
    // where is (st) stack trace
    print("Some other Problem $ex and $st");
  }
 

}