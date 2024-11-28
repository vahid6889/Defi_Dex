import 'package:defi_dex/core/resources/data_state.dart';
import 'package:defi_dex/features/feature_home/domain/entities/top_market_coin_entity.dart';

abstract class HomeRepository {
  Future<DataState<TopMarketCoinEntity>> fetchTopMarketCapData();
}
