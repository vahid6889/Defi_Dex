import 'package:defi_dex/core/config/my_theme.dart';
import 'package:defi_dex/core/utils/value_manager.dart';
import 'package:defi_dex/features/feature_home/presentation/widgets/top_market_cap_coins.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = MyThemes.darkTheme;
    return Scaffold(
      backgroundColor: const Color(0xff141414),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              width: 50.w,
              height: 100.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset('assets/images/landing/security-lock.png')
                      .image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.white70,
                          width: 0.5,
                        ),
                      ),
                    ),
                    height: 20.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.w,
                            right: 3.w,
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: MediaQuery.sizeOf(context).width,
                              height: 15.h,
                              decoration: const BoxDecoration(
                                color: Color(0xff222222),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.add_circle,
                                      color: Colors.orangeAccent,
                                      size: AppSize.s28,
                                    ),
                                  ),
                                  Text(
                                    'ایجاد کیف پول \n هوشمند',
                                    style: TextStyle(
                                      fontFamily: 'Vazir',
                                      fontSize: AppSize.s14,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'کیف پول دارم',
                            style: const TextStyle(
                              fontFamily: "Vazir",
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2.0,
                              fontSize: AppSize.s14,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Colors.white70,
                          width: 0.5,
                        ),
                      ),
                    ),
                    height: 20.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.w,
                            right: 6.w,
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: MediaQuery.sizeOf(context).width,
                              height: 15.h,
                              decoration: const BoxDecoration(
                                color: Color(0xff222222),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.add_circle,
                                      color: Colors.orangeAccent,
                                      size: AppSize.s28,
                                    ),
                                  ),
                                  Text(
                                    'ایجاد کیف پول \n شخصی',
                                    style: TextStyle(
                                      fontFamily: 'Vazir',
                                      fontSize: AppSize.s14,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'بازیابی کیف پول',
                            style: const TextStyle(
                              fontFamily: "Vazir",
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2.0,
                              fontSize: AppSize.s14,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.w,
              right: 5.w,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'رمز ارز های برتر',
                      style: themeData.textTheme.titleSmall,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.white70,
                        width: 1,
                      ),
                    ),
                  ),
                  child: const TopMarketCapCoins(),
                ),
              ],
            ),
          ),
          // Expanded(child: Container()),
        ],
      ),
    );
  }
}
