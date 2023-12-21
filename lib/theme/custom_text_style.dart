import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumAlmaraiGray700 =>
      theme.textTheme.bodyMedium!.almarai.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumAmberA200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.amberA200,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.45),
      );
  static get bodyMediumBlack90001_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.72),
      );
  static get bodyMediumBlack90001_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.72),
      );
  static get bodyMediumBluegray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get bodyMediumDMSansBluegray100 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.blueGray100,
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumJFFlat => theme.textTheme.bodyMedium!.jFFlat.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumJFFlatBluegray600 =>
      theme.textTheme.bodyMedium!.jFFlat.copyWith(
        color: appTheme.blueGray600,
        fontSize: 13.fSize,
      );
  static get bodyMediumJFFlatBluegray60013 =>
      theme.textTheme.bodyMedium!.jFFlat.copyWith(
        color: appTheme.blueGray600,
        fontSize: 13.fSize,
      );
  static get bodyMediumJFFlatRed700 =>
      theme.textTheme.bodyMedium!.jFFlat.copyWith(
        color: appTheme.red700,
        fontSize: 13.fSize,
      );
  static get bodyMediumJFFlat_1 => theme.textTheme.bodyMedium!.jFFlat;
  static get bodyMediumOutfit => theme.textTheme.bodyMedium!.outfit.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumOutfitGray50001 =>
      theme.textTheme.bodyMedium!.outfit.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumOutfitWhiteA700 =>
      theme.textTheme.bodyMedium!.outfit.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get bodyMediumOutfit_1 => theme.textTheme.bodyMedium!.outfit;
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumRed700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red700,
      );
  static get bodyMediumRed700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red700,
      );
  static get bodyMediumUrbanistBlack90001 =>
      theme.textTheme.bodyMedium!.urbanist.copyWith(
        color: appTheme.black90001.withOpacity(0.45),
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodyMedium_2 => theme.textTheme.bodyMedium!;
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack90011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 11.fSize,
      );
  static get bodySmallDMSansOnPrimaryContainer =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
        fontSize: 12.fSize,
      );
  static get bodySmallGray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90001.withOpacity(0.3),
        fontSize: 11.fSize,
      );
  static get bodySmallGray9000112 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90001.withOpacity(0.3),
        fontSize: 12.fSize,
      );
  static get bodySmallJFFlatBluegray300 =>
      theme.textTheme.bodySmall!.jFFlat.copyWith(
        color: appTheme.blueGray300,
        fontSize: 12.fSize,
      );
  static get bodySmallOutfitErrorContainer =>
      theme.textTheme.bodySmall!.outfit.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallOutfitErrorContainer12 =>
      theme.textTheme.bodySmall!.outfit.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallOutfitGray50001 =>
      theme.textTheme.bodySmall!.outfit.copyWith(
        color: appTheme.gray50001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOutfitPrimary =>
      theme.textTheme.bodySmall!.outfit.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallOutfitPrimary12 =>
      theme.textTheme.bodySmall!.outfit.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallOutfitWhiteA700 =>
      theme.textTheme.bodySmall!.outfit.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallPoppins => theme.textTheme.bodySmall!.poppins.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBlack90001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBlack9000112 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBlack9000112_1 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBlack90001_1 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmallPoppinsBlack90001_2 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black90001,
      );
  static get bodySmallPoppinsBluegray300 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray300,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBluegray700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray700,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsErrorContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsErrorContainer_1 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallPoppinsGray6007f =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray6007f,
        fontSize: 8.fSize,
      );
  static get bodySmallPoppinsGray700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray700,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsRed700 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.red700,
        fontSize: 12.fSize,
      );
  // Display text style
  static get displaySmall39 => theme.textTheme.displaySmall!.copyWith(
        fontSize: 39.fSize,
      );
  static get displaySmallAlmaraiRedA400 =>
      theme.textTheme.displaySmall!.almarai.copyWith(
        color: appTheme.redA400,
        fontSize: 35.fSize,
      );
  // Headline text style
  static get headlineMediumAlmaraiBlack90001 =>
      theme.textTheme.headlineMedium!.almarai.copyWith(
        color: appTheme.black90001,
        fontSize: 29.fSize,
      );
  static get headlineSmallOutfit => theme.textTheme.headlineSmall!.outfit;
  static get headlineSmallOutfitErrorContainer =>
      theme.textTheme.headlineSmall!.outfit.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get headlineSmallUrbanist => theme.textTheme.headlineSmall!.urbanist;
  // Label text style
  static get labelLarge13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLargeAlmarai => theme.textTheme.labelLarge!.almarai;
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeNunitoGray50002 =>
      theme.textTheme.labelLarge!.nunito.copyWith(
        color: appTheme.gray50002,
        fontSize: 13.fSize,
      );
  static get labelLargePoppinsBluegray500 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blueGray500,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsGray10003 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray10003,
        fontSize: 13.fSize,
      );
  static get labelLargePoppinsGray800 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray800,
        fontSize: 13.fSize,
      );
  static get labelLargePoppinsGreen400 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.green400,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsGreen400Medium =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.green400,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsPrimary =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsPrimaryMedium =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsRed700 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.red700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsRed700Medium =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.red700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsRed700Medium_1 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.red700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsRedA200 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsWhiteA700 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePoppinsWhiteA70013 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
      );
  static get labelLargePoppinsWhiteA70013_1 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
      );
  static get labelLargePoppinsWhiteA700SemiBold =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelLargeWhiteA700_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get labelMediumPoppinsBlack90001 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsBlack90001Medium =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsRed700 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.red700,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallAmber600 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.amber600,
      );
  static get labelSmallLightgreen500 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.lightGreen500,
      );
  static get labelSmallOnPrimaryContainer =>
      theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelSmallOrangeA200 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.orangeA200,
      );
  static get labelSmallPrimary => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLargeJFFlatBlack90001 =>
      theme.textTheme.titleLarge!.jFFlat.copyWith(
        color: appTheme.black90001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOutfit => theme.textTheme.titleLarge!.outfit.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLargeOutfitPrimary =>
      theme.textTheme.titleLarge!.outfit.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeOutfitPrimary20 =>
      theme.textTheme.titleLarge!.outfit.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 20.fSize,
      );
  static get titleLargeOutfit_1 => theme.textTheme.titleLarge!.outfit;
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppinsGray10003 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray10003,
        fontSize: 20.fSize,
      );
  static get titleLargePoppinsGray1000323 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray10003,
        fontSize: 23.fSize,
      );
  static get titleLargePoppinsPrimary =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRedA400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.redA400,
        fontSize: 20.fSize,
      );
  static get titleLargeRedA40021 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.redA400,
        fontSize: 21.fSize,
      );
  static get titleLargeUrbanist =>
      theme.textTheme.titleLarge!.urbanist.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLargeUrbanist23 =>
      theme.textTheme.titleLarge!.urbanist.copyWith(
        fontSize: 23.fSize,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumAlmarai =>
      theme.textTheme.titleMedium!.almarai.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumAlmaraiBold =>
      theme.textTheme.titleMedium!.almarai.copyWith(
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumAlmaraiRedA400 =>
      theme.textTheme.titleMedium!.almarai.copyWith(
        color: appTheme.redA400,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumAlmaraiRedA400Bold =>
      theme.textTheme.titleMedium!.almarai.copyWith(
        color: appTheme.redA400,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumAlmaraiWhiteA700 =>
      theme.textTheme.titleMedium!.almarai.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDMSansWhiteA700 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOutfit => theme.textTheme.titleMedium!.outfit.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumOutfitPrimary =>
      theme.textTheme.titleMedium!.outfit.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumOutfitPrimaryBold =>
      theme.textTheme.titleMedium!.outfit.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOutfitPrimaryBold_1 =>
      theme.textTheme.titleMedium!.outfit.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOutfitSemiBold =>
      theme.textTheme.titleMedium!.outfit.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOutfitWhiteA700 =>
      theme.textTheme.titleMedium!.outfit.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOutfitWhiteA700Bold =>
      theme.textTheme.titleMedium!.outfit.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRed700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRed700Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumUrbanistBlack900 =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA70016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get titleMediumWhiteA70016_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get titleMediumWhiteA700Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallAlmaraiBlack90001 =>
      theme.textTheme.titleSmall!.almarai.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallAlmaraiBlack90001_1 =>
      theme.textTheme.titleSmall!.almarai.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallAlmaraiRedA400 =>
      theme.textTheme.titleSmall!.almarai.copyWith(
        color: appTheme.redA400,
      );
  static get titleSmallAlmaraiWhiteA700 =>
      theme.textTheme.titleSmall!.almarai.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallDMSansBlack90001 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDMSansGray70001 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDMSansPrimaryContainer =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallDMSansPrimaryContainerMedium =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.64),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
        fontSize: 15.fSize,
      );
  static get titleSmallGray90001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallPoppins => theme.textTheme.titleSmall!.poppins.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsBlack90001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsBlack90001Medium =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001.withOpacity(0.64),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsBlack90001Medium_1 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsBlack90001Medium_2 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsBlack90001Medium_3 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001.withOpacity(0.45),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsBlack90001Medium_4 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsBlack90001SemiBold =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsBlack90001SemiBold_1 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsBlack90001SemiBold_2 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsBlack90001SemiBold_3 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsBlack90001_1 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallPoppinsGray10003 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray10003,
      );
  static get titleSmallPoppinsGray700 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsPrimary =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsPrimaryMedium =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsPrimarySemiBold =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsPrimarySemiBold_1 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsPrimary_1 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPoppinsWhiteA700 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get almarai {
    return copyWith(
      fontFamily: 'Almarai',
    );
  }

  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get jFFlat {
    return copyWith(
      fontFamily: 'JF Flat',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
