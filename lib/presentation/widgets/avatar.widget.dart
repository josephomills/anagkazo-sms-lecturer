import 'dart:io';

import 'package:flutter/material.dart';

/// Avatar widget
class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
    this.url,
    this.size = 56,
    this.margin,
    this.onTap,
    this.stroke = 1.5,
  }) : super(key: key);

  /// Image url
  final String? url;

  /// Width and height of avatar as it is a square. Defaults to 56
  final double size;

  /// width ofoutline
  final double stroke;

  /// Margin
  final EdgeInsetsGeometry? margin;

  /// onTap callback
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: (size / 2) + stroke,
        child: Container(
          height: size,
          width: size,
          margin: margin,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size / 2),
            color: Theme.of(context).scaffoldBackgroundColor,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: (url != null && url!.startsWith("assets"))
                  ? AssetImage(url!)
                  : (url!.startsWith("http"))
                      ? NetworkImage(
                          url ??
                              "https://images.unsplash.com/photo-1502033303885-c6e0280a4f5c?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&s=9be99762d86ae47ab59690f72d984be6",
                        )
                      : FileImage(File(url!)) as ImageProvider,
            ),
          ),
        ),
      ),
    );
  }
}
