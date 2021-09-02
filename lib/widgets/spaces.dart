import 'package:flutter/material.dart';

class SpaceBig extends StatelessWidget {
  const SpaceBig({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
    );
  }
}

class SpaceMedium extends StatelessWidget {
  const SpaceMedium({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
    );
  }
}

class SpaceSmall extends StatelessWidget {
  const SpaceSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5,
    );
  }
}
