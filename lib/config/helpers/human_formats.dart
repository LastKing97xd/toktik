import 'package:intl/intl.dart';

class HumanFormats{
  static String humanReadNumber(double number){

    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '' //aparece el dolar sino xd
    ).format(number);

    return formatterNumber;
  }
}