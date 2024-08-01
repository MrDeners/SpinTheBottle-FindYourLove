import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core_ui.dart';

part 'app_icon.g.dart';

@JsonSerializable()
class AppIcon {
  static const String _svgFileRegex = r'.svg$';

  final String iconKey;

  bool get isSVG => iconKey.contains(RegExp(_svgFileRegex));

  const AppIcon(this.iconKey);

  Widget call({
    Color? color,
    double? size,
    BoxFit? fit,
    EdgeInsets? padding,
    Function()? onTap,
  }) {
    assert(
      isSVG,
      'Implemented only for svg',
    );

    return InkWell(
      borderRadius: BorderRadius.circular(size ?? 0.0),
      onTap: onTap,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: SvgPicture.asset(
          iconKey,
          package: AppIcons.packageName,
          colorFilter: color != null
              ? ColorFilter.mode(
                  color,
                  BlendMode.srcIn,
                )
              : null,
          fit: fit ?? BoxFit.contain,
          height: size,
          width: size,
        ),
      ),
    );
  }

  Widget callWith({
    Color? color,
    double? size,
    BoxFit? fit,
    EdgeInsets? padding,
    Function()? onTap,
    required Widget child,
    double? spacer,
  }) {
    assert(
      isSVG,
      'Implemented only for svg',
    );

    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            borderRadius: BorderRadius.circular(size ?? 0.0),
            onTap: onTap,
            child: Padding(
              padding: padding ?? EdgeInsets.zero,
              child: SvgPicture.asset(
                iconKey,
                package: AppIcons.packageName,
                colorFilter: color != null
                    ? ColorFilter.mode(
                        color,
                        BlendMode.srcIn,
                      )
                    : null,
                fit: fit ?? BoxFit.contain,
                height: size,
                width: size,
              ),
            ),
          ),
          SizedBox(width: spacer ?? AppDimens.contentPadding4),
          child,
        ],
      ),
    );
  }

  factory AppIcon.fromJson(Map<String, dynamic> json) => _$AppIconFromJson(json);

  Map<String, dynamic> toJson() => _$AppIconToJson(this);

  static Map<String, dynamic> toJsonKey(AppIcon icon) => _$AppIconToJson(icon);
}
