import 'package:prody_mobile_2/model/owner_products.dart';

String getProductDescription(String barcode) {
  int index = -1;
  index = ownerProducts.indexWhere((element) => element.barcode == barcode);
// print('in getProductDescription, barcode = $barcode, index = $index');
  if (index != -1) {
    return ownerProducts[index].productDescription;
  } else {
    return 'Desc. Not found';
  }
}

String getProductNetworkImage(String barcode) {
  int index = -1;
  index = ownerProducts.indexWhere((element) => element.barcode == barcode);
// print('in getProductDescription, barcode = $barcode, index = $index');
  if (index != -1) {
    return ownerProducts[index].networkImageUrl;
  } else {
    return 'Desc. Not found';
  }
}

final List<OwnerProducts> ownerProducts = [
  OwnerProducts(
      '284',
      '7290110329181',
      'YOLO ROLLS שוקולד חלב בתוספת גלילי ופל',
      'https://www.tnuva.co.il/uploads/f_60d43d1012712_1624522000.jpg'),
  OwnerProducts(
      '284',
      '7290110329174',
      'YOLO ROLLS שוקולד בלונד בתוספת גלילי ופל',
      'https://www.tnuva.co.il/uploads/f_60d4394c99ef0_1624521036.jpg'),
];
