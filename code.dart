void main(){
  int m;
  var b = 20;
  var a = show;
  print(a);
  int c = show();
  print("C is $c");
  output(a); // output(show);

}
void output(Function fn){
  print("Inside Output ");
  print(fn());
}
int show(){
  print("I am Show");
  return 1000;
}