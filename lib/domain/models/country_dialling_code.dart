
import 'package:mcomestic/general/constants/app_constants.dart';

enum CountryDiallingCode {
  vi(
    code: '(+84)',
    svgIconPath: AppConstants.ACCESS_TOKEN,
  );
  // en(
  //   code: '(+1)',
  //   svgIconPath: PathIcon.vietnam_flagSVG,
  // );

  final String code;
  final String svgIconPath;

  static CountryDiallingCode fromPhoneNumber(String phoneNumber) {
    return CountryDiallingCode.values.firstWhere(
      (element) => phoneNumber.startsWith(element.code),
      orElse: () => CountryDiallingCode.vi,
    );
  }

  const CountryDiallingCode({
    required this.code,
    required this.svgIconPath,
  });
}
