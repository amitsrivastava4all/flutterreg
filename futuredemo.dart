import 'dart:io';

void main(){
  print(Directory.current.path);
 File file = new File(Directory.current.path+'/futuredemo.dart');
 Future future = file.readAsString();
 future.then((data)=>print("Data is $data")).catchError((err)=>print("Error is $err"));
 for(int i = 1; i<=10; i++){
   print("I is $i");
 }
 print("###############################");
}