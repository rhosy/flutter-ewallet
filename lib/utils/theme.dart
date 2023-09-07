import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0Xff4A00E0);
const Color secondaryColor = Color(0Xff8E2DE2);
const Color redColor = Color(0XffFA543B);
const Color whiteColor = Color(0XffFFFFFF);
const Color blackColor = Color(0Xff212121);
const Color greyColor = Color(0xffF5F5F5);
const Color yellowColor = Color(0XffF9AE56);

TextStyle blackTextStyle = GoogleFonts.nunito(color: blackColor);
TextStyle whiteTextStyle = GoogleFonts.nunito(color: whiteColor);
TextStyle greyTextStyle = GoogleFonts.nunito(color: greyColor);
TextStyle redTextStyle = GoogleFonts.nunito(color: redColor);

FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

final ThemeData themeApp = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: blackColor),
  useMaterial3: true,
  scaffoldBackgroundColor: greyColor,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    elevation: 0,
    surfaceTintColor: greyColor,
    iconTheme: const IconThemeData(color: blackColor),
    backgroundColor: greyColor,
    titleTextStyle: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
    systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: whiteColor,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light),
  ),
);
