import 'package:defi_dex/core/error_handling/app_exception.dart';
import 'package:defi_dex/core/resources/data_state.dart';
import 'package:defi_dex/features/feature_home/domain/entities/top_market_coin_entity.dart';
import 'package:dio/dio.dart';

class CheckExceptions {
  static Response response(Response response) {
    switch (response.statusCode) {
      case 200:
        return response;
      case 400:
        throw BadRequestException(response: response);
      case 401:
        throw UnauthorisedException();
      case 404:
        throw NotFoundException();
      case 500:
        throw ServerException();
      case 422:
        throw ServerException(
          message:
              response.data['success'] == false && response.statusCode == 422
                  ? response.data['message']
                  : null,
        );
      default:
        throw FetchDataException(
          message: "پاسخی دریافت نشد",
        );
    }
  }

  static Future<DataState<TopMarketCoinEntity>> getErrorMarket(
    AppException appException,
  ) async {
    switch (appException.runtimeType) {
      /// return error came from server
      case BadRequestException _:
        return DataFailed(appException.message);

      case NotFoundException _:
        return DataFailed(appException.message);

      /// get refresh token and call api again
      case UnauthorisedException _:
        return DataFailed(appException.message);

      /// server error
      case ServerException _:
        return DataFailed(appException.message);

      /// dio or timeout and etc error
      case FetchDataException _:
        return DataFailed(appException.message);

      default:
        return DataFailed(appException.message);
    }
  }
}
