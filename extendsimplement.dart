class Order{
  takeOrder(){}
  limitOrder(){}
  orderCancel(){}
}
class PizzaOrder implements Order{
  @override
  limitOrder() {
    // TODO: implement limitOrder
    return null;
  }

  @override
  orderCancel() {
    // TODO: implement orderCancel
    return null;
  }

  @override
  takeOrder() {
    // TODO: implement takeOrder
    return null;
  }
  
}
class Account{
  void deposit(){
    print("Account Deposit");
  }
  void roi(){
    print("ROI Account");
  }
}
class CurrentAccount extends Account{
  void odLimit(){

  }
}