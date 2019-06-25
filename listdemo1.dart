void main(){
  List l = [1000,2000,3000];  // int x [5]
  l.add(100000);
  
 //List l2 =  l.map((y)=>"Rs $y").toList();
 l.map((y)=>"Rs $y").forEach((z)=>print(z));
 //print(l2);

}