
abstract class Shape{
  // void area(){
  //   print("Shape Area");
  // }
  void area();
  void point(){
    print("Shape Point");
  }
}
class Square extends Shape{
  @override
  void area(){
    print("Square Area");
  }
  void allSideEquals(){
    print("All Side Equals");
  }
}
class Rectangle extends Shape{
  @override
  void area(){
    print("Rect Area");
  }
}
class Drawing{
  void draw(Shape shape){  // Upcasting
   shape.area();
   shape.point();
   if(shape is Square){
     Square sr = shape; // Downcasting
     sr.allSideEquals();
   }
  }
}
void main(){
  Drawing drawing = new Drawing();
  drawing.draw(new Rectangle());
  print("####################################");
   drawing.draw(new Square());

  // Shape shape = new Rectangle(); // Upcasting
  // shape.area();
  // shape.point();
  // shape = new Square();
  // shape.area();
  // shape.point();
  

  // Rectangle rect = new Rectangle();
  // rect.area();
  // rect.point();
  // Square square = new Square();
  // square.area();
  // square.point();
  // square.allSideEquals();
 // Shape shape = new Shape();
 //Shape shape = Shape();
}
