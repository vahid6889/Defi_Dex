import 'package:defi_dex/core/presentation/ui/main_wrapper.dart';
import 'package:defi_dex/features/feature_home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:defi_dex/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  /// init locator
  await setup();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => locator<HomeBloc>()..add(LoadTopMarketCapEvent())),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Defi-Dex',
        darkTheme: ThemeData(
          useMaterial3: false,
          brightness: Brightness.dark,
        ),
        themeMode: ThemeMode.dark,
        home: const MainWrapper(),
      );
    });
  }
}
