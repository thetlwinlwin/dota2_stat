import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/user_service.dart';

class IdText extends ConsumerStatefulWidget {
  const IdText({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IdTextState();
}

class _IdTextState extends ConsumerState<IdText> {
  late final TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '');
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'SteamID: 12345',
          prefixIcon: const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              maxRadius: 20,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/steam_logo.png'),
            ),
          ),
          suffixIcon: _controller.text.isNotEmpty
              ? IconButton(
                  onPressed: () => _controller.clear(),
                  icon: const Icon(Icons.close),
                )
              : null,
        ),
        controller: _controller,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        onSubmitted: (value) {
          ref.read(userDataStateNotifierProvider.notifier).idLogin(id: value);
        },
        inputFormatters: [
          FilteringTextInputFormatter(RegExp(r'(\d+)'), allow: true)
        ],
      ),
    );
  }
}
