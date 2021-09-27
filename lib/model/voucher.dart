import 'package:flutter/foundation.dart';

class Voucher {
  String consumerName;
  String consumerMobileNumber;
  String voucherStatus;
  String createdDate;
  String barcode;
  String productDescription;
  String validFromDate;
  String expiryDate;
  String comments;
  String sourceType;
  String voucherType;
  String ownerId;
  String marketCountryCode;
  String useDate;
  String useChainId;
  String useChainBranchId;
  String useChainBranchCashierCode;

  Voucher({
    @required this.consumerName,
    @required this.consumerMobileNumber,
    @required this.voucherStatus,
    @required this.createdDate,
    @required this.barcode,
    @required this.productDescription,
    @required this.validFromDate,
    @required this.expiryDate,
    @required this.comments,
    @required this.sourceType,
    @required this.voucherType,
    @required this.ownerId,
    @required this.marketCountryCode,
    this.useDate = '',
    this.useChainId = '',
    this.useChainBranchId = '',
    this.useChainBranchCashierCode = '',
  });

  factory Voucher.fromJson(Map<String, dynamic> json) => Voucher(
        consumerName: json["consumer_name"] ?? json["consumer_name"],
        consumerMobileNumber: json["consumer_mobile"],
        voucherStatus: json["voucher_status"],
        createdDate: json["created_date"],
        barcode: json["barcode"],
        productDescription: json["product_desc"],
        validFromDate: json["valid_from_date"],
        expiryDate: json["expiry_date"],
        comments: json["comments"],
        sourceType: json["source_type"],
        voucherType: json["voucher_type"],
        ownerId: json["owner_id"].toString(),
        marketCountryCode: json["market_country_code"],
        useDate: json["use_date"],
        useChainId: json["use_chain_id"],
        useChainBranchId: json["use_chain_branch_id"],
        useChainBranchCashierCode: json["use_chain_branch_cashier_code"],
      );

  Map<String, dynamic> toJson() => {
        "consumer_name": consumerName,
        "consumer_mobile": consumerMobileNumber,
        "voucher_status": voucherStatus,
        "created_date": createdDate,
        "barcode": barcode,
        "product_desc": productDescription,
        "valid_from_date": validFromDate,
        "expiry_date": expiryDate,
        "comments": comments,
        "source_type": sourceType,
        "voucher_type": voucherType,
        "owner_id": ownerId,
        "market_country_code": marketCountryCode,
        // "use_date": useDate,
        // "use_chain_id": useChainId,
        // "use_chain_branch_id": useChainBranchId,
        // "use_chain_branch_cashier_code": useChainBranchCashierCode,
      };
}
