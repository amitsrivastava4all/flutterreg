class A{
  int _x;
  A(this._x);
  // A(int x){
  //   this._x = x;
  // }
  A.oneCons(){
    print("Another Cons Named Cons");
  }
  void set x(x){
    this._x = x;
    print("set call $x");
  }
  get x{
      return this._x;
  }
  void show(){
    print("I am Show");
  }
}
void main(){
  A obj3= A(100);
  A obj2 = A.oneCons();
  A obj = new A(1000);
  obj.x = 1000;
  print(obj.x);
}