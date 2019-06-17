import 'dart:io';

class Employee {
  int _id;
  String _name;
  double _salary;
  Employee(this._id, this._name, this._salary);
  set salary(salary){
    this._salary = salary;
  }
  get salary{
    return this._salary;
  }
  String printSalarySlip() {
    return """Id $_id Name $_name Basic Salary $_salary
        HRA ${hra()}
        DA ${da()}
        TA ${ta()}
        PF ${pf()}
        GS ${gs()}
        TAX ${tax()}
        NS ${ns()}
     """;
  }

  double pf() {
    return this._salary * 0.05;
  }

  double ns() {
    return this.gs() - this.gs() * this.tax();
  }

  double tax() {
    double gross = gs();
    if (gross < 400000) {
      return 0.0;
    } else if (gross >= 400000 && gross < 600000) {
      return 10.0;
    } else if (gross >= 600000 && gross < 900000) {
      return 20.0;
    } else {
      return 30.0;
    }
  }

  double gs() {
    return this._salary + hra() + da() + ta() - pf();
  }

  double hra() {
    return this._salary * 0.30;
  }

  double da() {
    return this._salary * 0.10;
  }

  double ta() {
    return this._salary * 0.20;
  }
}

void main() {
  print("Enter the Id ");
  int id = int.parse(stdin.readLineSync());
  print("Enter the name");
  String name = stdin.readLineSync();
  print("Enter the Salary ");
  double salary = double.parse(stdin.readLineSync());

  Employee ram = new Employee(id, name, salary);
  ram.salary = ram.salary + 10000;
  print(ram.printSalarySlip());
}
