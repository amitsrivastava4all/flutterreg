class Student{
  int _id;
  String _name;
  int _marks;
  Student(int id , String name,int marks){
    this._id = id;
    this._name = name;
    this._marks = marks;
  }
  set marks(int marks){
    this._marks = marks;
  }
  get marks{
    return this._marks;
  }
}
