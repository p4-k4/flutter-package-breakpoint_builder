library breakpoint_builder;

import 'package:flutter/widgets.dart';

class BreakpointBuilder extends StatelessWidget {
  final Function(BuildContext context, int count) builder;

  final int bp1;
  final int bp2;
  final int bp3;
  final int bp4;
  final int bp5;
  final int bp6;

  final int bp1Count;
  final int bp2Count;
  final int bp3Count;
  final int bp4Count;
  final int bp5Count;
  final int bp6Count;

  const BreakpointBuilder({
    Key? key,
    required this.builder,
    this.bp1 = 576,
    this.bp2 = 768,
    this.bp3 = 992,
    this.bp4 = 1200,
    this.bp5 = 1400,
    this.bp6 = 1600,
    this.bp1Count = 1,
    this.bp2Count = 1,
    this.bp3Count = 2,
    this.bp4Count = 3,
    this.bp5Count = 3,
    this.bp6Count = 4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    int count = 1; // Default

    if (size.width <= bp1) {
      count = bp1Count;
    } else if (size.width <= bp2) {
      count = bp2Count;
    } else if (size.width <= bp3) {
      count = bp3Count;
    } else if (size.width <= bp4) {
      count = bp4Count;
    } else if (size.width <= bp5) {
      count = bp5Count;
    } else if (size.width <= bp6) {
      count = bp6Count;
    } else {
      count = bp6Count;
    }

    return builder(context, count);
  }
}
