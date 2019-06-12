int add(int x, [int  y=0]){
  return x + y;
}
// Positional Optional Param
int mul([int x=0, int y=0]){
  return x * y;
}
// Named Optional Param
int div({int x=0, int y=0}){
  return x ~/ y;
}
show(){
  print("I am Show");
  return 1000;  // return int
}
void print2(){

}
void main(){
  // Fat Arrow Function
  var adder2 = (x,y)=>x+y;
  print(adder2(1,2));
  // Anonymous function
  var adder = (x,y){
    return x  + y;
  };
  var t = adder(1000,200);
  print(t);
  print(div(y:10,x:2));
  print(mul(10,10));
  var e;
  e = 100;
  
  int result= add(10);
  print("Result $result");
  print(show());
}