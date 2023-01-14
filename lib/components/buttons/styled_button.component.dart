// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({
    Key? key,
    this.removeBackground = false,
    this.showOutline = false,
    this.includeMargin = false,
    this.text,
    this.child,
    this.onTap,
  }) : super(key: key);

  final bool removeBackground;
  final bool showOutline;
  final bool includeMargin;
  final String? text;
  final Widget? child;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: removeBackground
            ? _buildChild(context)
            : Container(
                decoration: showOutline
                    ? BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                          width: 3.5,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      )
                    : BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                constraints: const BoxConstraints(
                  minHeight: 55.0,
                ),
                margin: includeMargin ? const EdgeInsets.all(25.0) : null,
                child: Center(
                  child: _buildChild(context),
                ),
              ),
      );

  Widget _buildChild(BuildContext context) =>
      child ??
      Text(
        text!,
        style: TextStyle(
          color: showOutline || removeBackground
              ? Theme.of(context).primaryColor
              : Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      );
}
