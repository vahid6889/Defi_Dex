import 'package:defi_dex/features/feature_home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:defi_dex/features/feature_home/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainWrapper extends StatefulWidget {
  static const routeName = "/main_wrapper";
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<HomeBloc>(context).add(LoadTopMarketCapEvent());
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xff141414),
        systemNavigationBarDividerColor: Color(0xff141414),
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        statusBarColor: Color(0xff141414),
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return const Scaffold(
      body: HomePage(),
    );
  }
}
