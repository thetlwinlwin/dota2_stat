import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../navigation/routers.dart';
import '../../providers/idstat_api_service.dart';
import 'menu_profile.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Flexible(child: MenuProfile()),
        _MenuItems(),
      ],
    );
  }
}

class _MenuItems extends StatefulWidget {
  const _MenuItems({
    Key? key,
  }) : super(key: key);

  @override
  State<_MenuItems> createState() => __MenuItemsState();
}

class __MenuItemsState extends State<_MenuItems>
    with SingleTickerProviderStateMixin {
  late AnimationController _staggerController;

  static List<String> menuTitles = [
    AppRoutes.subRecents.name,
    AppRoutes.subStats.name
  ];
  static const _initialDelayTime = Duration(milliseconds: 100);
  static const _itemSlideTime = Duration(milliseconds: 500);
  static const _staggerTime = Duration(milliseconds: 100);
  final _animationDuration = _itemSlideTime + _staggerTime * menuTitles.length;
  final List<Interval> _itemSlideIntervals = [];

  @override
  void initState() {
    super.initState();
    _createAnimationIntervals();
    _staggerController =
        AnimationController(vsync: this, duration: _animationDuration);
    _staggerController.forward();
  }

  void _createAnimationIntervals() {
    for (var i = 0; i < menuTitles.length; ++i) {
      final startTime = _initialDelayTime + (_staggerTime * i);
      final endTime = startTime + _itemSlideTime;
      _itemSlideIntervals.add(
        Interval(
          startTime.inMilliseconds / _animationDuration.inMilliseconds,
          endTime.inMilliseconds / _animationDuration.inMilliseconds,
        ),
      );
    }
  }

  @override
  void dispose() {
    _staggerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildListItems(),
    );
  }

  List<Widget> _buildListItems() {
    final listItems = <Widget>[];
    for (var i = 0; i < menuTitles.length; i++) {
      listItems.add(
        AnimatedBuilder(
          animation: _staggerController,
          child: _MenuItemCard(name: menuTitles[i]),
          builder: (context, child) {
            final animationPercent = Curves.easeOut.transform(
              _itemSlideIntervals[i].transform(_staggerController.value),
            );
            final opacity = animationPercent;
            final slideDistance = (1.0 - animationPercent) * 200;

            return Opacity(
              opacity: opacity,
              child: Transform.translate(
                offset: Offset(slideDistance, 0),
                child: child,
              ),
            );
          },
        ),
      );
    }

    return listItems;
  }
}

class _MenuItemCard extends ConsumerWidget {
  final String name;

  const _MenuItemCard({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEnabled = ref.watch(idStatProvider).maybeWhen(
          data: (result) => result.profile!.isGuest ? true : false,
          orElse: () => false,
        );

    return InkWell(
      onTap: isEnabled
          ? () {
              Navigator.pop(context);
              context.goNamed(name);
            }
          : null,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border(
            bottom: BorderSide(width: 1),
          ),
        ),
        child: Center(
          child: Text(
            name.toUpperCase(),
            style: TextStyle(
              color: isEnabled
                  ? Theme.of(context).colorScheme.secondary
                  : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
