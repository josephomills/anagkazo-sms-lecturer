import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

/// Dyamic implementation of [ElevatedButton]
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.onTap,
    this.isLoading = false,
    this.widthFactor = 1,
    this.backgroundColor,
    required this.label,
    this.spinnerColor,
    this.height = 56,
    this.textColor,
  });

  final VoidCallback? onTap;
  final bool isLoading;
  final double widthFactor;
  final Color? backgroundColor;
  final String label;
  final Color? spinnerColor;
  final double height;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Theme.of(context).colorScheme.outline;
              }
              return backgroundColor ?? Theme.of(context).colorScheme.primary;
            }),
            fixedSize: MaterialStateProperty.all<Size>(
              Size(
                MediaQuery.of(context).size.width * widthFactor,
                height,
              ),
            ),
          ),
      onPressed: isLoading ? null : onTap,
      child: isLoading
          ? SpinKitThreeBounce(
              color: spinnerColor ?? Theme.of(context).colorScheme.onPrimary,
              size: 40,
            )
          : Text(
              label,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: textColor ?? Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
    );
  }
}
