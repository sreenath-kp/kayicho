import 'package:flutter/material.dart';
import 'package:kayicho/models/bill.dart';

class BillView extends StatefulWidget {
  const BillView({super.key});

  @override
  State<BillView> createState() => _BillViewState();
}

class _BillViewState extends State<BillView> {
  final List<Bill> bills = billList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bills.length,
      itemBuilder: (context, index) {
        return Card(
            child: ListTile(
                title: Text(bills[index].month),
                subtitle: Text(bills[index].amount),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: bills[index].isPaid
                      ? const Icon(Icons.check, color: Colors.green)
                      : const Icon(Icons.pending_outlined, color: Colors.red),
                ),
                onLongPress: () {
                  setState(() {
                    bills[index].isPaid = !bills[index].isPaid;
                  });
                }));
      },
    );
  }
}
