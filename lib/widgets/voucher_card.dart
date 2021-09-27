import 'package:flutter/material.dart';
import 'package:prody_mobile_2/model/voucher.dart';
import 'package:prody_mobile_2/pages/details_page.dart';
import 'package:prody_mobile_2/helpers/date_helper.dart';

class VoucherCard extends StatelessWidget {
  const VoucherCard({this.voucher});
  final Voucher voucher;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailPage(voucher)));
      },
      child: (voucher.voucherStatus == 'open')
          ? VoucherCardOpen(voucher: voucher)
          : VoucherCardUsed(voucher: voucher),
    );
  }
}

class VoucherCardOpen extends StatelessWidget {
  const VoucherCardOpen({
    Key key,
    @required this.voucher,
  }) : super(key: key);

  final Voucher voucher;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      // color: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
              child: Row(
                children: [
                  Image.asset("assets/images/tnuva.jpg",
                      width: 100, height: 50),
                  const SizedBox(width: 20),
                  const Text('Free product',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
              child: Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text(
                      ' Product description product',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Expanded(
                    child: Image.asset("assets/images/product_picture.jpg",
                        width: 100, height: 130),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0, bottom: 4.0),
              child: Row(children: [
                Text(
                  '- barcodes: ${voucher.barcode}',
                  style: const TextStyle(fontSize: 15.0),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0, bottom: 4.0),
              child: Row(children: [
                Text(
                  '- ${voucher.voucherStatus}',
                  style: const TextStyle(fontSize: 15.0),
                ),
                Text(' - ${daysToDate(voucher.expiryDate)}'),
                const Spacer(),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 7.0),
              child: Row(children: const [
                Text('- Limited for one product for each purchase'),
                Spacer(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class VoucherCardUsed extends StatelessWidget {
  const VoucherCardUsed({
    Key key,
    @required this.voucher,
  }) : super(key: key);

  final Voucher voucher;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      // color: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                children: const [
                  Text('Free product - Used',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                      )),
                  Spacer(),
                  Icon(
                    Icons.free_breakfast_outlined,
                    size: 50.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                children: const [
                  Text(
                    ' Product description product',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Spacer(),
                  Icon(Icons.food_bank),
                ],
              ),
            ),
            Text(
              voucher.barcode,
              style: const TextStyle(fontSize: 15.0),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
              child: Row(children: [
                Text(
                  voucher.voucherStatus,
                  style: const TextStyle(fontSize: 15.0),
                ),
                Text(' on - ${convertDateTimeDisplay(voucher.useDate)}',
                    style: const TextStyle(fontSize: 15.0)),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 10.0),
              child: Row(children: [
                Text(
                    'Used at ${voucher.useChainId} - ${voucher.useChainBranchId}'),
                const Spacer(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
