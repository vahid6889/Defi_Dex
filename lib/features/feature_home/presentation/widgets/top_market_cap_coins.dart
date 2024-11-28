import 'package:cached_network_image/cached_network_image.dart';
import 'package:defi_dex/core/config/my_theme.dart';
import 'package:defi_dex/core/utils/constants.dart';
import 'package:defi_dex/core/utils/value_manager.dart';
import 'package:defi_dex/features/feature_home/domain/entities/top_market_coin_entity.dart';
import 'package:defi_dex/features/feature_home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:defi_dex/features/feature_home/presentation/bloc/home_bloc/top_market_cap_status.dart';
import 'package:defi_dex/features/feature_home/presentation/widgets/decimalRounder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class TopMarketCapCoins extends StatelessWidget {
  const TopMarketCapCoins({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final themeData = MyThemes.darkTheme;

    Future<void> refreshCurrentWeather() async {
      BlocProvider.of<HomeBloc>(context).add(LoadTopMarketCapEvent());
    }

    return RefreshIndicator(
      backgroundColor: Colors.blue,
      color: Colors.white,
      onRefresh: refreshCurrentWeather,
      child: SizedBox(
        height: height * 0.39,
        child: BlocBuilder<HomeBloc, HomeState>(
          buildWhen: (previous, current) {
            if (previous.topMarketCapStatus == current.topMarketCapStatus) {
              return false;
            }
            return true;
          },
          builder: (context, state) {
            if (state.topMarketCapStatus is TopMarketCapLoading) {
              return SizedBox(
                height: 80,
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.shade400,
                  highlightColor: Colors.white,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 8.0,
                              bottom: 8.0,
                              left: 8.0,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30.0,
                              child: Icon(Icons.add),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 8.0, left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 50,
                                    height: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: SizedBox(
                                      width: 25,
                                      height: 15,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: SizedBox(
                              width: 70,
                              height: 40,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 50,
                                    height: 15,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: SizedBox(
                                      width: 25,
                                      height: 15,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              );
            }

            if (state.topMarketCapStatus is TopMarketCapCompleted) {
              /// cast data
              final TopMarketCapCompleted topMarketCapCompleted =
                  state.topMarketCapStatus as TopMarketCapCompleted;

              final TopMarketCoinEntity? topMarketCoinEntity =
                  topMarketCapCompleted.topMarketCoinEntity;

              return ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  final number = index + 1;
                  final coinInfo = topMarketCoinEntity?.data![index].coinInfo;
                  final coinRaw = topMarketCoinEntity?.data![index].raw;
                  final coinDisplay = topMarketCoinEntity?.data![index].display;

                  final Color percentColor =
                      DecimalRounder.setPercentChangesColor(
                    coinRaw!.usd!.changepct24hour!,
                  );
                  final Icon percentIcon = DecimalRounder.setPercentChangesIcon(
                    coinRaw.usd!.changepct24hour!,
                  );

                  return SizedBox(
                    height: height * 0.075,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            number.toString(),
                            style: themeData.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 15.0),
                          child: CachedNetworkImage(
                            fadeInDuration: const Duration(microseconds: 500),
                            height: 32,
                            width: 32,
                            imageUrl:
                                '${Constants.imageUrl}${coinDisplay!.usd!.imageurl!}',
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                coinInfo!.fullName!.length > 11
                                    ? coinInfo.fullName!.substring(0, 11)
                                    : coinInfo.fullName!,
                                style: themeData.textTheme.bodySmall,
                              ),
                              Text(
                                coinInfo.name!,
                                style: themeData.textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  coinDisplay.usd!.price!,
                                  style: TextStyle(
                                    color: percentColor,
                                    fontSize: AppSize.s14,
                                    fontFamily: 'Vazir',
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    percentIcon,
                                    Text(
                                      "${coinDisplay.usd!.changepct24hour!}%",
                                      style: TextStyle(
                                        color: percentColor,
                                        fontSize: AppSize.s12,
                                        fontFamily: 'Vazir',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
              );
            }

            if (state.topMarketCapStatus is TopMarketCapError) {
              final TopMarketCapError topMarketCapStatus =
                  state.topMarketCapStatus as TopMarketCapError;
              return Center(
                child: Text(topMarketCapStatus.message),
              );
            }

            return Container();
          },
        ),
      ),
    );
  }
}
