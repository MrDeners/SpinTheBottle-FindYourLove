import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppAvatarWidget extends StatelessWidget {
  final String avatarUrl;
  final String borderUrl;

  const AppAvatarWidget({
    required this.avatarUrl,
    required this.borderUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CachedNetworkImage(
          imageUrl: avatarUrl,
          height: MediaQuery.of(context).size.width * 0.07,
          width: MediaQuery.of(context).size.width * 0.07,
        ),
        Transform.translate(
          offset: Offset(0, MediaQuery.of(context).size.height * 0.005),
          child: CachedNetworkImage(
            imageUrl: avatarUrl,
            height: MediaQuery.of(context).size.width * 0.07,
            width: MediaQuery.of(context).size.width * 0.07,
          ),
        ),
      ],
    );
  }
}
