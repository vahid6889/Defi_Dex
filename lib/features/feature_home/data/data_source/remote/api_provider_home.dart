import 'package:defi_dex/core/error_handling/check_exceptions.dart';
import 'package:defi_dex/core/utils/constants.dart';
import 'package:dio/dio.dart';

class ApiProviderHome {
  final Dio _dio = Dio();
  int limitHomeViewItem = 10;
  String currencySymbol = "USD";

  /// top market cap data
  Future<Response> getTopMarketCapData() async {
    try {
      final response = await _dio.get(
          "${Constants.baseUrl}/top/mktcapfull?limit=$limitHomeViewItem&tsym=$currencySymbol&${Constants.apiKey}");

      return response;
    } on DioException catch (e) {
      return CheckExceptions.response(e.response!);
    }
  }
}
