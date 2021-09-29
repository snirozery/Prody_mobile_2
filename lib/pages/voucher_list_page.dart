import 'package:prody_mobile_2/helpers/http_helper.dart';
import 'package:flutter/material.dart';
import 'package:prody_mobile_2/widgets/voucher_card.dart';

class VoucherListPage extends StatelessWidget {
  const VoucherListPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: FutureBuilder(
        // future: getVouchers(),
        future: getVouchersQuery(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Text("Loading...");
          } else {
            print('snapshot data length: ${snapshot.data.length}');
            // return const Text("123...");
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return VoucherCard(voucher: snapshot.data[index]);
              },
            );
          }
        },
      ),
    );
  }
}
