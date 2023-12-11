import 'package:intl/intl.dart';

class TFormatter{
  static String formatData(DateTime ? date){
    date ??=  DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String  formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en-US', symbol: '\$').format(amount);
  }
  static String formatPhoneNumber(String phoneNumber){
    //Assuming a 10 digit us phone number format (123) 456-789
    if(phoneNumber.length==10){
      return '(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3,6)} ${phoneNumber.substring(6)}';
    }else if (phoneNumber.length==11){
      return '(phoneNumber.substring(0 , 4)}) ${phoneNumber.substring(4 ,7)} ${phoneNumber.substring(7)}';
    }
    //venel inim add akkam diifrent formats ssss
    return phoneNumber;
  }
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters
    var digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extract the country code
    String countryCode = '+${digitOnly.substring(0, 2)}';
    digitOnly = digitOnly.substring(2);

    // Add remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;
    while (i < digitOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }
      int end = i + groupLength;
      formattedNumber.write(digitOnly.substring(i, end));
      if (end < digitOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }

    return formattedNumber.toString();
  }

}