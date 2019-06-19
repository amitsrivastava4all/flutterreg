class Angle{
  int short;
  int big;
  Angle(int short, int big){
    this.short = short;
    this.big = big;
  }
}
void main(){
  Map<Angle,int> mapA = {
    Angle(3,9):90
  };

  Set<int> sets = {10,20,10,10,100,10};
  print("********************Sets $sets");
  Map<String,int> map = {'delhi':30,'mumbai':32};
  print(map.values);
  print(map.keys);
  map['shimla']=18;
  print(map);
  print(map['delhi']);
  print(map.containsKey('delhi'));
  print(map.remove('delhi'));
  List<int> l = [1,20,30,4,40,11,50];
  l.add(9000); // add in last
  l.remove(20); // value wise
  l.removeAt(0); // INdex wise
  l.insert(1, 10000); // index wise add
  l.contains(9000); // true , false
  //l.sort((a,b)=>a-b);
l.sort((a,b)=>b-a);
l.indexOf(30);  // index found 
l.forEach((y)=>print("Y is $y"));
 l.map((y)=>y+ y *.18).forEach((e)=>print("E is $e"));

 print("After GST $l");
  print("After Sort $l");
 //l.add("Hello");
  print("List is $l");

}