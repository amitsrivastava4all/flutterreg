void show([int x, int y]){
  print("X is $x and Y is $y");
}
void show2({int x=0, int y=0}){
  print(":::: X is $x and Y is $y");
}
void Text({String title='', String font='', String style = ''}){
  print("Title is $title and Style is $style and font is $font");
}
void main(){
  show(10,20);
  show2(y:100,x:200);
  Text(title:'Hello',style:'Bold');
}