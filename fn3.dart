void main(){

  int x=100;
  var z = ()=>1000;
  List<Function> list = calc(10);
  print(list[0](100,200));
  print(list[1](10,20));
  print(addAll([10,20,30]));
  print(addAll([]));
  print(addAll([11,22,44,55,66,77]));
}

int addAll(List<int> list){ 
  int sum = 0;
  for(int i = 0 ; i<list.length; i++){
    sum+=list[i];
  }
  return sum;
}

List<Function> calc(int q){
int m = 90;
  var add = (x,y)=>x+y+m+q;
  var sub = (x,y)=>x-y-m-q;
  return [add,sub];
}

int y = 200;