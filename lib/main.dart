import 'package:flutter/material.dart';

import './salarybloc.dart';

void main() {
  runApp(MaterialApp(
    home: SalaryCalc(),
  ));
}

class SalaryCalc extends StatelessWidget {
  SalaryBloc bloc = new SalaryBloc();
  SalaryOpr salaryOpr = new SalaryOpr();
  double salary;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLOC Example'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              style: TextStyle(fontSize: 30),
              onChanged: (str) {
                print('OnChange call');
                this.salary = double.parse(str);
                print('Salary is $salary');
              },
              decoration: InputDecoration(hintText: 'Enter the Salary'),
            ),
            RaisedButton(
              onPressed: () {
                salaryOpr.salary = salary;
                print("Button Pressed ${salaryOpr.salary}");

                bloc.salary_event_sink.add(salaryOpr);
              },
              child: Text(
                'Compute',
                style: TextStyle(fontSize: 30),
              ),
            ),
            StreamBuilder(
                stream: bloc.stream_salary,
                initialData: 0,
                builder: (context, snapshot) {
                  print("Rec SnapShot :::: ${snapshot.data.hra}");
                  return Column(
                    children: <Widget>[
                      Text(
                          snapshot.data == null
                              ? '0'
                              : snapshot.data.hra.toString(),
                          style: TextStyle(fontSize: 30)),
                      Text(
                          snapshot.data == null
                              ? '0'
                              : snapshot.data.da.toString(),
                          style: TextStyle(fontSize: 30))
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
