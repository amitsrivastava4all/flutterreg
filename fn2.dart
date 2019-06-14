import 'dart:io';

void calc(){
  Function add = (x,y){
    return x + y;
  };
  final sub = (x,y)=>x-y;
  print(add(10,20));
  print(sub(20,20));
}

void main(){
  calc();
  loop(cube);
  loop(evenOdd);
  loop(table);
  print("################################");
  String filePath = Directory.current.path+'/fn2.dart';
  print(filePath);
  File file = new File(filePath);
  Future future = file.readAsString();
  future.then((data)=>print(data)).catchError((err)=>print(err));
  //String content = file.readAsStringSync();  // Blocking
  //print(content);
  for(int i = 1; i<=10; i++){
    print("I Loop is $i");
  }
  var i = 100;
 
  print(evenOdd);
}
final evenOdd = (num)=>num%2==0?"Even $num":"Odd $num";
final cube = (num)=>num* num * num;
final table =(i)=>5*i;
void loop(fn){
  for(int i = 1; i<=10; i++){
    print(fn(i));
  }
}