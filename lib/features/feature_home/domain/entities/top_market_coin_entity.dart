import 'package:defi_dex/features/feature_home/data/models/all_crypto_model.dart';
import 'package:equatable/equatable.dart';

class TopMarketCoinEntity extends Equatable {
  final String? message;
  final num? type;
  final MetaData? metaData;
  final List<dynamic>? sponsoredData;
  final List<Data>? data;
  final dynamic rateLimit;
  final bool? hasWarning;

  const TopMarketCoinEntity({
    this.message,
    this.type,
    this.metaData,
    this.sponsoredData,
    this.data,
    this.rateLimit,
    this.hasWarning,
  });

  @override
  List<Object?> get props => [
        message,
        type,
        metaData,
        sponsoredData,
        data,
        rateLimit,
        hasWarning,
      ];
}
