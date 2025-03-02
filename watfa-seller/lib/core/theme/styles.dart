import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';
import 'font_weight_helper.dart';
import 'size_config.dart';

class TextStyles {
  static TextStyle font27Blackw600Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 27),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.black,
    );
  }

  static TextStyle font20Blackw700Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.bold,
      color: Colors.black,
    );
  }

  static TextStyle font14Blackw500Inter(context) {
    return GoogleFonts.inter(
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle font14grey1w400Inter(context) {
    return GoogleFonts.inter(
      fontSize: 14,
      color: ColorsManagers.grey1,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle font29Blackw800Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 29),
      fontWeight: FontWeightHelper.extraBold,
      color: Colors.black,
    );
  }

  static TextStyle font18darkGrayw400Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.darkGray,
    );
  }

  static TextStyle font18Blackw400Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeightHelper.regular,
      color: Colors.black,
    );
  }

  static TextStyle font14greyLightw400aDLaMDisplay(context) {
    return GoogleFonts.aDLaMDisplay(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.greyLight,
    );
  }

  static TextStyle font16DavyGrayW400Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.davysGray,
    );
  }

  static TextStyle font14IndigoW700Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.indigo,
    );
  }

  static TextStyle font16purpleW400Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.purple,
    );
  }

  static TextStyle font24PurpleW700Manropes(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.purple,
    );
  }

  static TextStyle font18PurpleW400Manropes(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.blackOlive,
    );
  }

  static TextStyle font18BlackW500Manropes(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeightHelper.bold,
      color: Colors.black,
    );
  }

  static TextStyle font14PhilippineGrayW400Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.philippineGray,
    );
  }

  static TextStyle font14blackOliveW500Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.blackOlive,
    );
  }

  static TextStyle font16Purplew600Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManagers.purple,
    );
  }

  static TextStyle font14BlackW400Ralway(context) {
    return GoogleFonts.raleway(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.regular,
      color: Colors.black,
    );
  }

  static TextStyle font18RaisinBlackw600Ralway(context) {
    return GoogleFonts.raleway(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManagers.raisinBlack,
    );
  }

  static TextStyle font18OuterSpaceW400Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.outerSpace,
    );
  }

  static TextStyle font18BlackW600Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.black,
    );
  }

  static TextStyle font14OuterSpaceW500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.outerSpace,
    );
  }

  static TextStyle font10OuterSpaceW400Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.outerSpace,
    );
  }

  static TextStyle font20DarkCharcoalw700Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.darkCharcoal,
    );
  }

  static TextStyle font10GrayW600Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManagers.gray,
    );
  }

  static TextStyle font13PurpleW500Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.purple,
    );
  }

  static TextStyle font13darkSilverW600Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManagers.darkSilver,
      height: 2,
    );
  }

  static TextStyle font14Blackw600Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.black,
    );
  }

  static TextStyle font16Blackw400Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeightHelper.regular,
      color: Colors.black,
    );
  }

  static TextStyle font14BlackW700Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.bold,
      color: Colors.black,
    );
  }

  static TextStyle font14PurpleW700Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.purple,
    );
  }

  static TextStyle font13WhiteW600Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      color: Colors.white,
      fontWeight: FontWeightHelper.semiBold,
    );
  }

  static TextStyle font12OuterSpaceW400Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.outerSpace,
    );
  }

  static TextStyle font12PurpleW500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.purple,
    );
  }

  static TextStyle font14raisinBlackW700Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.raisinBlack,
    );
  }

  static TextStyle font20raisinBlackW600Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManagers.lightWhite,
    );
  }

  static TextStyle font20Blackw500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.medium,
      color: Colors.black,
    );
  }

  static TextStyle font13Whitew600Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white,
    );
  }

  static TextStyle font15DimGrayW700Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.dimGray,
    );
  }

  static TextStyle font13PhilipineSilverW400Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.philippineSilver,
    );
  }

  static TextStyle font10WhiteW600Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white,
    );
  }

  static TextStyle font10WhiteW600Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white,
    );
  }

  static TextStyle font13BlackW600Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.black,
    );
  }

  static TextStyle font16BlackOliverW700Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.blackOlive,
    );
  }

  static TextStyle font18BlackOliverW700Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.blackOlive,
    );
  }

  static TextStyle font14BlackOliverW400Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.blackOlive,
    );
  }

  static TextStyle font16BlackOliverW400Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.blackOlive,
    );
  }

  static TextStyle font15RussianVioletW600Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManagers.russianViolet,
    );
  }

  static TextStyle font32GraniteGrayW700Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.graniteGray,
    );
  }

  static TextStyle font24BlackW500Outfit(context) {
    return GoogleFonts.outfit(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeightHelper.medium,
      color: Colors.black,
    );
  }

  static TextStyle font16SonicSilverW400Outfit(context) {
    return GoogleFonts.outfit(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.sonicSilver,
    );
  }

  static TextStyle font24BlackOliveW700Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.blackOlive,
    );
  }

  static TextStyle font17BlackOliveW700Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 17),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.blackOlive,
    );
  }

  static TextStyle font12BlackOliveW400Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.blackOlive,
    );
  }

  static TextStyle font14PurpleW700Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.purple,
    );
  }

  static TextStyle font20blackOliveW500Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.blackOlive,
    );
  }

  static TextStyle font20blackOliveW700Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.blackOlive,
    );
  }

  static TextStyle font24darkBlackW700Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.darkBlack,
    );
  }

  // static TextStyle font10WhiteW600Manrope(context) {
  //   return GoogleFonts.manrope(
  //     fontSize: getResponsiveFontSize(context, fontSize: 24),
  //     fontWeight: FontWeightHelper.bold,
  //     color: ColorsManagers.darkBlack,
  //   );
  // }
  static TextStyle font16blackOliveW400Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.blackOlive,
    );
  }

  static TextStyle font8Blackw500Podkova(context) {
    return GoogleFonts.podkova(
      fontSize: getResponsiveFontSize(context, fontSize: 8),
      fontWeight: FontWeightHelper.medium,
      color: Colors.black,
    );
  }

  static TextStyle font20PurpleW700Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.purple,
    );
  }

  static TextStyle font16GraniteGrayW600Nunito(context) {
    return GoogleFonts.nunito(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManagers.graniteGray,
    );
  }

  static TextStyle font10GraniteGrayW600Nunito(context) {
    return GoogleFonts.nunito(
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManagers.graniteGray,
    );
  }

  static TextStyle font14BlackwOliveW400Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.blackOlive,
    );
  }

  static TextStyle font24WhiteW700Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeightHelper.bold,
      color: Colors.white,
    );
  }

  static TextStyle font11WhiteW400Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 11),
      fontWeight: FontWeightHelper.regular,
      color: Colors.white,
    );
  }

  static TextStyle font27Purplew600Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 27),
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManagers.purple,
    );
  }

  static TextStyle font20RaisinBlackw500Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.raisinBlack,
    );
  }

  static TextStyle font20RaisinBlackw600Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.raisinBlack,
    );
  }

  static TextStyle font18SpanishGrayw500Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.spanishGray,
    );
  }

  static TextStyle font18Purplew400Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.purple,
    );
  }

  static TextStyle font20Blackw700Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.bold,
      color: Colors.black,
    );
  }

  static TextStyle font24Blackw700Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeightHelper.bold,
      color: Colors.black,
    );
  }

  static TextStyle font14DarkSilverw400Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.darkSilver,
    );
  }

  static TextStyle font14Jetw500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.jet,
    );
  }

  static TextStyle font14Jetw700Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.jet,
    );
  }

  static TextStyle font14Blackw500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: Colors.black,
    );
  }

  static TextStyle font14Greyw500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: Colors.grey,
    );
  }

  static TextStyle font14DarkGrayW500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.graniteGray,
    );
  }

  static TextStyle font14RaisinBlackw500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.raisinBlack,
    );
  }

  static TextStyle font14SacramentoStateGreenw500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.sacramentoStateGreen,
    );
  }

  static TextStyle font14SonicSilverW400Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.sonicSilver,
    );
  }

  static TextStyle font16OnyxW400Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.onyx,
    );
  }

  static TextStyle font14Purplew500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.purple,
    );
  }

  static TextStyle font20WhiteW600Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white,
    );
  }

  static TextStyle font24BlackW800Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeightHelper.extraBold,
      color: Colors.black,
    );
  }

  static TextStyle font20WhiteW600Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white,
    );
  }

  static TextStyle font20BlackW500Outfit(context) {
    return GoogleFonts.outfit(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.medium,
      color: Colors.black,
    );
  }

  static TextStyle font14WhiteW500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeightHelper.medium,
      color: Colors.white,
    );
  }

  static TextStyle font20OuterSpaceW600Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.semiBold,
      color: ColorsManagers.outerSpace,
    );
  }

  static TextStyle font20DimGrayw500Podkova(context) {
    return GoogleFonts.podkova(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.dimGray,
    );
  }

  static TextStyle font15CharlestonGreenw400Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.charlestonGreen,
    );
  }

  static TextStyle font15GraniteGrayw400Manrope(context) {
    return GoogleFonts.manrope(
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.graniteGray,
    );
  }

  static TextStyle font16DarkLiverw400Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeightHelper.regular,
      color: ColorsManagers.darkLiver,
    );
  }

  static TextStyle font16Purplew700Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeightHelper.bold,
      color: ColorsManagers.purple,
    );
  }

  static TextStyle font16Purplew500Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: ColorsManagers.purple,
      fontWeight: FontWeightHelper.medium,
    );
  }

  static TextStyle font10DaveGrayw300Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontWeight: FontWeightHelper.light,
      color: ColorsManagers.davysGray,
    );
  }

  static TextStyle font10Blackw400Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontWeight: FontWeightHelper.regular,
      color: Colors.black,
    );
  }

  static TextStyle font12w600Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeightHelper.semiBold,
    );
  }

  static TextStyle font12TaupeGrayw500Inter(context) {
    return GoogleFonts.inter(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.taupeGray,
    );
  }

  static TextStyle font20PhilippineGrayw500Roboto(context) {
    return GoogleFonts.roboto(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeightHelper.medium,
      color: ColorsManagers.philippineGray,
    );
  }

  static TextStyle font11Greyw500Poppins(context) {
    return GoogleFonts.poppins(
      fontSize: getResponsiveFontSize(context, fontSize: 11),
      fontWeight: FontWeightHelper.medium,
      color: Colors.grey,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  }
  return width / 1500;
}
