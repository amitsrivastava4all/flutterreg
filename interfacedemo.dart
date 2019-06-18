class Loan{
  void roi(){}
  void withDraw(){}
  void emi(){}
  void payment(){
    print("Payment");
  }
}
class CorpLoan{
  void duration(){}
}
class AutoLoan implements Loan, CorpLoan{
  @override
  void emi() {
    // TODO: implement emi
  }

  @override
  void payment() {
    // TODO: implement payment
  }

  @override
  void roi() {
    // TODO: implement roi
  }

  @override
  void withDraw() {
    // TODO: implement withDraw
  }

  @override
  void duration() {
    // TODO: implement duration
  }
  
}
class HomeLoan implements Loan{
  @override
  void emi() {
    // TODO: implement emi
  }

  @override
  void payment() {
    // TODO: implement payment
  }

  @override
  void roi() {
    // TODO: implement roi
  }

  @override
  void withDraw() {
    // TODO: implement withDraw
  }

}