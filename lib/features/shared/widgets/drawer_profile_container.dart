import 'package:flutter/material.dart';

class ProfileCardContainer extends StatelessWidget {
  final bool isCenter;
  final Widget child;
  const ProfileCardContainer({
    Key? key,
    required this.child,
    this.isCenter = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.3,
      child: Container(
        width: double.infinity,
        decoration: _decoration(context),
        child: isCenter
            ? Center(
                child: child,
              )
            : child,
      ),
    );
  }

  BoxDecoration _decoration(BuildContext context) {
    return BoxDecoration(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      gradient: LinearGradient(
        colors: [
          Theme.of(context).colorScheme.primary,
          Theme.of(context).backgroundColor,
        ],
      ),
    );
  }
}
