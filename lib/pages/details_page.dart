import 'package:flutter/material.dart';
import 'package:prody_mobile_2/model/voucher.dart';
import 'package:prody_mobile_2/helpers/date_helper.dart';

class DetailPage extends StatelessWidget {
  final Voucher voucher;
  const DetailPage(this.voucher);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(voucher.barcode),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('created date: ${convertDateTimeDisplay(voucher.createdDate)}'),
          Text('valid from: ${convertDateTimeDisplay(voucher.validFromDate)}'),
          Text('expiry date: ${convertDateTimeDisplay(voucher.expiryDate)}'),
          Text('source: ${voucher.sourceType}'),
          Text('status: ${voucher.voucherStatus}'),
          Text('for use of mobile: ${voucher.consumerMobileNumber}'),
        ],
      ),
    );
  }
}
