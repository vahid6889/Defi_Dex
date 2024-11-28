import 'package:bloc/bloc.dart';
import 'package:defi_dex/core/resources/data_state.dart';
import 'package:defi_dex/core/usecase/use_case.dart';
import 'package:defi_dex/features/feature_home/domain/entities/top_market_coin_entity.dart';
import 'package:defi_dex/features/feature_home/domain/use_cases/get_top_market_cap_usecase.dart';
import 'package:defi_dex/features/feature_home/presentation/bloc/home_bloc/top_market_cap_status.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetTopMarketCapUseCase _getTopMarketCapUseCase;
  HomeBloc(
    this._getTopMarketCapUseCase,
  ) : super(
          HomeState(
            topMarketCapStatus: TopMarketCapLoading(),
          ),
        ) {
    on<LoadTopMarketCapEvent>(
      (event, emit) async {
        emit(state.copyWith(newTopMarketCapStatus: TopMarketCapLoading()));

        final DataState<TopMarketCoinEntity> dataState =
            await _getTopMarketCapUseCase(NoParams());

        if (dataState is DataSuccess) {
          emit(
            state.copyWith(
              newTopMarketCapStatus: TopMarketCapCompleted(dataState.data),
            ),
          );
        }

        if (dataState is DataFailed) {
          emit(
            state.copyWith(
              newTopMarketCapStatus: TopMarketCapError(dataState.error!),
            ),
          );
        }
      },
    );
  }
}
