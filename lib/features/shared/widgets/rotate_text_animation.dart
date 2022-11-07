import 'package:flutter/material.dart';

class RotateText extends StatefulWidget {
  final List<String> textList;
  final TextStyle style;
  final Duration? duration;

  const RotateText({
    Key? key,
    required this.style,
    this.duration = const Duration(seconds: 1),
    required this.textList,
  }) : super(key: key);

  @override
  State<RotateText> createState() => _RotateTextState();
}

class _RotateTextState extends State<RotateText> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeIn, _fadeOut;
  late Animation<Alignment> _slideIn, _slideOut;
  int _index = 0;
  late String _currentText;
  bool get _isLast => _index == widget.textList.length - 1;

  @override
  void initState() {
    super.initState();
    _initAnimation();
  }

  void _initAnimation() {
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _slideIn = AlignmentTween(
      begin:
          Alignment.topCenter.add(Alignment.center).resolve(TextDirection.ltr),
      end: Alignment.center.add(Alignment.center).resolve(TextDirection.ltr),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.4, curve: Curves.linear),
      ),
    );
    _slideOut = AlignmentTween(
      begin: Alignment.center.add(Alignment.center).resolve(TextDirection.ltr),
      end: Alignment.bottomCenter
          .add(Alignment.center)
          .resolve(TextDirection.ltr),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.7, 1.0, curve: Curves.linear),
      ),
    );

    _fadeIn = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.4, curve: Curves.easeOut),
      ),
    );
    _fadeOut = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.7, 1.0, curve: Curves.easeIn),
      ),
    );

    _currentText = widget.textList[_index];
    _controller
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) _nextAnimation();
        },
      )
      ..forward();
  }

  void _nextAnimation() {
    final isLast = _isLast;

    if (isLast) {
      _index = 0;
    } else {
      _index++;
    }

    if (mounted) setState(() {});
    _controller.dispose();
    _initAnimation();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final fontSize =
        widget.style.fontSize ?? DefaultTextStyle.of(context).style.fontSize;
    return AnimatedBuilder(
      animation: _controller,
      child: _Text(
        data: _currentText,
        style: widget.style,
      ),
      builder: (context, child) {
        return SizedBox(
          height: fontSize! * 10 / 5,
          child: AlignTransition(
            alignment: _slideIn.value.y != 0.0 ? _slideIn : _slideOut,
            child: Opacity(
              opacity: _fadeIn.value != 1.0 ? _fadeIn.value : _fadeOut.value,
              child: child!,
            ),
          ),
        );
      },
    );
  }
}

class _Text extends StatelessWidget {
  final String data;
  final TextStyle style;
  const _Text({
    Key? key,
    required this.data,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: style,
    );
  }
}
