import 'package:intl/intl.dart';


String addCommas(double value) {
  NumberFormat addCommasFormatter = NumberFormat('###,###,###,###.##', 'en_US');

  return addCommasFormatter.format(value);
}
