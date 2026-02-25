import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LayoutBuilderPreserveBaseline extends StatelessWidget {
  const LayoutBuilderPreserveBaseline({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final LayoutWidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return _PreserveBaseline(
          child: builder(context, constraints),
        );
      },
    );
  }
}

class _PreserveBaseline extends SingleChildRenderObjectWidget {
  const _PreserveBaseline({super.child});

  @override
  RenderObject createRenderObject(BuildContext context) =>
      _RenderPreserveBaseline();
}

class _RenderPreserveBaseline extends RenderProxyBox {
  @override
  double? computeDistanceToActualBaseline(TextBaseline baseline) =>
      child?.getDistanceToActualBaseline(baseline);
}
