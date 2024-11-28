part of 'home_bloc.dart';

// ignore: must_be_immutable
class HomeState extends Equatable {
  TopMarketCapStatus topMarketCapStatus;

  HomeState({
    required this.topMarketCapStatus,
  });

  HomeState copyWith({
    TopMarketCapStatus? newTopMarketCapStatus,
  }) {
    return HomeState(
      topMarketCapStatus: newTopMarketCapStatus ?? topMarketCapStatus,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        topMarketCapStatus,
      ];
}
