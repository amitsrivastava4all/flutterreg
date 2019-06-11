void main(){
  var a  = 100;
  var b = 200;
  var c = a + b;
  var r = "Hello";
  r.toUpperCase();
  // String Interpolation
  print("Message is "+r);
  print(a.runtimeType);
  print(a.runtimeType.runtimeType);
  print(a is int);
  print("A is "+a.toString());
  print("A is $a B is $b and C is $c");
  print("Sum is ${a+b}");

}