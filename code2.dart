void loop(int n, Function fn){
  for(int i = 1; i<=n; i++){
    print(fn(i));
  }
}
// String evenOdd(num){
//   return num%2==0?"Even No $num":"Odd No $num";
// }
var cube = (num)=>num* num * num;
final Function evenOdd=(num)=>num%2==0?"Even No $num":"Odd No $num";
void main(){
  var qqq = 1000;
  int ff ;
  final int p = 1000;
  //evenOdd = cube;
  loop(10,evenOdd);
  // var evenOdd=(num)=>num%2==0?"Even No $num":"Odd No $num";
  // loop(10,evenOdd);
  //loop(10,(num)=>num%2==0?"Even No $num":"Odd No $num");
}