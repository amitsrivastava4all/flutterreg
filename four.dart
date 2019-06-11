class A{
  final int x = 20; // Instance Var
  static const int y=100; // Class Var
}

class Validation{
  static bool isBlank(String str){
    if(str.trim().length==0){
      return true;
    }
    else{
      return false;
    }
  }
}


class Employee{
  static int counter = 0;
  int id ;
  String name;
  Employee(){
    counter++;
    print("Count is $counter");
  }
}
class User{
   String userid;
   String password;
}
void main(){
  double w = 10/3;
  print(w);
  int w1 = 10~/3;
  print(w1);

print("#######################################");
  outer:
  for(var i = 1; i<=3; i++){
    for(var j = 1; j<=3;j++){
      if(i==j){
        continue outer;
        //break outer;
        break; // exit from the current loop
        //continue; // skip the current iteration
      }
      print("I is $i and J is $j");
    }
  }

  print("#######################################");

  for(var i=1; i<=10; i+=2){

  }
  var i = 1;
  while(i<=10){
    if(i<5){
      i++;
    }
    else{
      i+=2;
    }
  }
  var myname;
  myname = myname??"Tom";
  print(Validation.isBlank("")?"Name is Blank":"Not Blank");
  var emp1 = new Employee();
  var emp2 = new Employee();
  var emp3 = new Employee();
  var myobject = new A();
  print(myobject.x);
  // int x = 100;
  // x = 200;
  var age = 21;
  final MAX_AGE = 21;
  final obj = new StringBuffer();
  //const obj2 = new StringBuffer();
  const MIN_AGE = 18;
  const PI = 3.14;
  if(age>=MIN_AGE){

  }

  // var y = 100;
  String a = "Amit";
  print(a.substring(1,3));
  String msg = "Hello how are you";
  List<int> l =[10,20,30];
  List<String> arr = msg.split(" ");
  print(arr.length);
  String temp = msg.split(" ")[0];
  print(arr);
  


}