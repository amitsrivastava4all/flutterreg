import 'dart:io';
String show(){
  return "I am Show";
}
void done(dynamic data){
    print("Data is $data");
}
void error(dynamic er){
  print("error is $er");
}
void main(){
  //int e = show();
  
  String path = Directory.current.path;
  File file = new File(path+'/xy.dart');
  Future future = file.readAsString();
  //future.then(done).catchError(error);
  future.then((dynamic data)=>print("Data is $data")).catchError((dynamic err)=>print("Error is $err"));
  for(int i = 1; i<=10; i++){
    print("Doing something else $i");
  }
}