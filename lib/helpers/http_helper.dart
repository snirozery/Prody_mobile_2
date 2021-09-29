import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:prody_mobile_2/model/voucher.dart';

Future<List<Voucher>> getVouchers() async {
  String url = "https://www.prody.me/api/getVouchers/177"; // API 5
  var response = await http.get(Uri.parse(url));
  final int statusCode = response.statusCode;
  final String responseBody = response.body;
  print('status Code: ${statusCode}');
  // print('responseBody: ${responseBody}');
  var jsonData = json.decode(responseBody);

  List<Voucher> voucherList = [];
  for (var v in jsonData) {
    Voucher voucher = Voucher.fromJson(v);
    voucherList.add(voucher);
  }
  print('voucherList: ${voucherList.length}');
  return voucherList;
}

Future<List<Voucher>> getVouchersQuery() async {
  Map<String, dynamic> parametersMap = {};
  // parametersMap['voucher_status'] = 'open';
  // parametersMap['consumer_mobile'] = '054-5343156';
  parametersMap['owner_id'] = '284';

  print('map: ${parametersMap.toString()}');
  final uri = Uri.https('www.prody.me', '/api/getVouchersQuery', parametersMap);

  final response =
      await http.get(uri, headers: {"Content-Type": "application/json"});

  final int statusCode = response.statusCode;
  final String responseBody = response.body;
  print('status Code: ${statusCode}');
  // print('responseBody: ${responseBody}');
  var jsonData = json.decode(responseBody);

  List<Voucher> voucherList = [];
  for (var v in jsonData) {
    Voucher voucher = Voucher.fromJson(v);
    voucherList.add(voucher);
  }
  print('voucherList: ${voucherList.length}');
  return voucherList;
}
