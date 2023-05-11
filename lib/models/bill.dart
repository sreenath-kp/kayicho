class Bill {
  String month;
  String amount;
  bool isPaid = false;

  Bill({required this.amount, required this.month, required this.isPaid});
}

List<Bill> billList = [
  Bill(amount: '1000', month: 'January', isPaid: true),
  Bill(amount: '2000', month: 'February', isPaid: false),
  Bill(amount: '3000', month: 'March', isPaid: true),
  Bill(amount: '4000', month: 'April', isPaid: false),
  Bill(amount: '5000', month: 'May', isPaid: true),
  Bill(amount: '6000', month: 'June', isPaid: false),
  Bill(amount: '7000', month: 'July', isPaid: true),
  Bill(amount: '8000', month: 'August', isPaid: false),
  Bill(amount: '9000', month: 'September', isPaid: true),
  Bill(amount: '10000', month: 'October', isPaid: false),
  Bill(amount: '11000', month: 'November', isPaid: true),
  Bill(amount: '12000', month: 'December', isPaid: false),
];
