class Account{
  int id;
  String name;
  // Account(){
  //   print("Account Cons Call");
  // }
  Account(int id){
    this.id = id;
    print("Account Class Param Cons Call");
  }
  void withDraw(){
    print("Account WithDraw Call");
  }
  void roi(){
    print("ROI of Account 5%");
  }
}
class SavingAccount extends Account{
  SavingAccount():super(100){
    print("Saving Account Cons Call");
  }
  @override
  void roi(){
    print("ROI of Account 6%");
  }
}
void main(){
  //SavingAccount sa = new SavingAccount();
  SavingAccount sa = SavingAccount();
  sa.roi();
  sa.withDraw();
  

}