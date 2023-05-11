class Bill {
  String month;
  String amount;
  bool isPaid = false;

  Bill({required this.amount, required this.month, required this.isPaid});
}

List<Bill> billList = [
  Bill(amount: '1000', month: 'January', isPaid: true),
  Bill(amount: '2000', month: 'February', isPaid: true),
  Bill(amount: '3000', month: 'March', isPaid: true),
  Bill(amount: '4000', month: 'April', isPaid: true),
  Bill(amount: '5000', month: 'May', isPaid: false),
];
