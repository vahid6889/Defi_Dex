import 'package:defi_dex/features/feature_home/data/data_source/remote/api_provider_home.dart';
import 'package:defi_dex/features/feature_home/data/repository/home_repositoryImpl.dart';
import 'package:defi_dex/features/feature_home/domain/repository/home_repository.dart';
import 'package:defi_dex/features/feature_home/domain/use_cases/get_top_market_cap_usecase.dart';
import 'package:defi_dex/features/feature_home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setup() async {
  locator.registerSingleton<ApiProviderHome>(ApiProviderHome());

  /// repositories
  locator.registerSingleton<HomeRepository>(HomeRepositoryImpl(locator()));

  /// use case
  locator.registerSingleton<GetTopMarketCapUseCase>(
      GetTopMarketCapUseCase(locator()));

  /// bloc features
  locator.registerSingleton(HomeBloc(locator()));
}
