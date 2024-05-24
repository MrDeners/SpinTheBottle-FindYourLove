import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../core_ui.dart';

part 'app_image.g.dart';
@JsonSerializable()
class AppImage {
  final String iconKey;

  const AppImage(this.iconKey);

  Widget call({
    Color? color,
    double? height,
    double? width,
    BoxFit? fit,
    Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        iconKey,
        package: AppImages.packageName,
        fit: fit ?? BoxFit.contain,
        height: height,
        width: width,
      ),
    );
  }

  Widget callSquare({
    Color? color,
    double? size,
    BoxFit? fit,
    Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        iconKey,
        package: AppIcons.packageName,
        fit: fit ?? BoxFit.contain,
        height: size,
        width: size,
      ),
    );
  }

  Widget callBackground({
    double? height,
    double? width,
    Widget? child,
    BoxFit? fit,
  }) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            iconKey,
            package: AppImages.packageName,
          ),
          fit: fit ?? BoxFit.cover,
        ),
      ),
      child: child,
    );
  }

  factory AppImage.fromJson(Map<String, dynamic> json) => _$AppImageFromJson(json);
  Map<String, dynamic> toJson() => _$AppImageToJson(this);

  static Map<String, dynamic> toJsonKey(AppImage image) => _$AppImageToJson(image);
}
