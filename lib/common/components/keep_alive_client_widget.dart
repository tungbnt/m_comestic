import 'package:flutter/widgets.dart';

class KeepAliveClientWidget extends StatefulWidget {
  const KeepAliveClientWidget({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<KeepAliveClientWidget> createState() => _KeepAliveClientWidgetState();
}

class _KeepAliveClientWidgetState extends State<KeepAliveClientWidget> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}
