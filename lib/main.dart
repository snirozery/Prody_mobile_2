import 'package:flutter/material.dart';
import 'package:prody_mobile_2/pages/voucher_list_page.dart';
import 'package:prody_mobile_2/pages/navigation_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prody - CPG Vouchers',
      debugShowCheckedModeBanner: false,
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
      drawer: NavigationPage(),
      body: const VoucherListPage(),
    );
  }
}
