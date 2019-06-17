import 'dart:io';

class Customer{
  int _id; // Instance Var
  String _name;
  double _salary;
  String msg="";
  set id(int id){
    if(id<=0){
    msg += "Invalid Id ";
    return ;
    }
    this._id = id;
  }
   get id{
    return this._id;
  }
  set name(String name){
    this._name = name;
  }
  get  name{
    return this._name;
  }

  set salary(double salary){
    if(salary<=0){
      msg+="Invalid Salary ";
      return ;
    }
    this._salary = salary;
  }
  get salary{
    return this._salary;
  }
  // Customer(){
  //   id = 101;
  //   name = 'Ram';
  //   salary = 9999;
  // }
  // Local Var
  // Customer(int id , String name , double salary){
  //   this.id = id;  // Instance Var = Local Var
  //   this.name = name;
  //   this.salary = salary;
  // }
  // Named Constructor
  Customer.takeId(this._id);
  Customer.inputData(this._id, this._name);
  Customer.takeCustomerData(this._id , this._name, this._salary);
  // Customer.takeCustomerData(int id , String name , double salary){
  //   this.id = id;  // Instance Var = Local Var
  //    this.name = name;
  //    this.salary = salary;
  // }
  Customer(this._id , this._name ,this._salary);
  String show(){
     return "Id ${this._id} Name is ${this._name} Salary is ${_salary}";
  }
}
void main(){
  print("Enter the Id ");
  int id = int.parse(stdin.readLineSync());
  print("Enter the name");
  String name = stdin.readLineSync();
  print("Enter the Salary");
  double salary = double.parse(stdin.readLineSync());
  //Customer ram = Customer.takeId(1001);
  //Customer ram = Customer.takeCustomerData(1001, "Ram",9999);
  Customer ram = new Customer(id, name,salary);
  ram.id = -1001;
  ram.salary = -9999;
  print(ram.msg);
  print(ram.show());
  

}