import 'dart:io';
class A{
  A show(){
    return this;
  }
  A disp(){
    return this;
  }
}
void main(){
  A obj = new A();
  obj.show().disp();
  String name = "Amit";
  print(name.toUpperCase().substring(1,3));
  File file = new File(Directory.current.path+'/chaindemo.dart');  
  //Future future = file.readAsString();
  //future.then(onValue).catchError(onError)
}
