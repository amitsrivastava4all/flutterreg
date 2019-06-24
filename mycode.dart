import './x1.dart';
void main(){
  show();
  String name = "rAm kUmaR shARMA";
  var arr = name.split(" ");
  var fullName = "";
  for(int i = 0; i<arr.length; i++){
    fullName += arr[i][0].toUpperCase() + arr[i].substring(1).toLowerCase()+" ";
  }
  print("Full Name is $fullName");


print("Result is ${add(100,200)}");
print("Result is ${add()}");
print("Result is ${add(100)}");
print("Named ${addition()}");
print("Named ${addition(y:100,z:20)}");
print("Named ${addition(x:100,z:20)}");
var sub=([int a=0,int b=0])=>a+b;
print("Sub ${sub(10)}");
print("Sub2 ${sub(10,20)}");
print("Sub3 ${sub()}");
double tt = 999.20;
bool flag = true;
List l = [100,200,300];
l.add(99000); // last
l.insert(0, 33333); // index wise
l.removeAt(0);
print(l.contains(200)?"Found":"Not Found");
l.sort();
Set<int> sets = {10,20,30,30,10};
print(sets);


}

int add([int x=0, int y=0]){
  return x + y;
}
int addition({int x=0 , int y = 0, int z =0 }){
  print("X is $x and Y is $y and Z is $z");
  return x + y + z;
}
