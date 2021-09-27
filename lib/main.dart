import 'package:flutter/material.dart';
import 'package:prody_mobile_2/helpers/http_helper.dart';
import 'package:prody_mobile_2/pages/details_page.dart';
import 'package:prody_mobile_2/widgets/voucher_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prody - CPG Vouchers',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage('Prody Vouchers'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage(this.title);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: FutureBuilder(
          future: getVouchers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Text("Loading...");
            } else {
              print('snapshot.data.length: ${snapshot.data.length}');
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
      ),
    );
  }
}
