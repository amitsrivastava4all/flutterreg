import 'dart:io';

class MinorAgeException implements Exception{
  String _msg;
  MinorAgeException(String msg){
    this._msg = msg;
  }
  errorMessage(){
    return "SOme Error Occured";
  }
  @override
  String toString(){
    return this._msg.trim().length>0?this._msg:"Age is Less than 18";
  }
}
void main(){
  print("Enter the Age");
  int age = int.parse(stdin.readLineSync());
  try{
    if(age<18){
      throw new MinorAgeException("");
      //throw new MinorAgeException("AGE IS CAN'T BE LESS THAN 18 ********");
    }
    print("DL ");
    print("VoterID");
    }catch(e){
        print(e);
        print(e.errorMessage());
    }
  
}