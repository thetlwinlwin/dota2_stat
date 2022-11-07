import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/constants.dart';
import '../../../shared/models/api_models/herostat_api_model.dart';
import '../../provider/page_index.dart';
import 'name_tag.dart';

class PageViewer extends ConsumerStatefulWidget {
  final List<HeroStats> stats;
  const PageViewer({
    super.key,
    required this.stats,
  });

  @override
  ConsumerState<PageViewer> createState() => _PageViewerState();
}

class _PageViewerState extends ConsumerState<PageViewer> {
  late final PageController _topController;
  int _index = 0;
  double _currentVal = 0.0;
  final double _scaleFactor = 0.8;

  @override
  void initState() {
    super.initState();
    _topController = PageController(viewportFraction: 0.8);
    _topController.addListener(() {
      setState(() {
        _currentVal = _topController.page!;
      });
    });
  }

  @override
  void dispose() {
    _topController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 2,
          child: Center(
            child: SizedBox(
              height: 200,
              child: PageView.builder(
                controller: _topController,
                onPageChanged: (value) {
                  ref.read(pageIndexProvider.notifier).state = value;
                  setState(() {
                    _index = value;
                  });
                },
                itemBuilder: (_, index) {
                  Matrix4 matrix = Matrix4.identity();
                  if (_currentVal.floor() == index) {
                    final currScale =
                        1 - (_currentVal - index) * (1 - _scaleFactor);

                    matrix = Matrix4.diagonal3Values(1.0, currScale, 1);
                  } else if (_currentVal.floor() + 1 == index) {
                    final currScale = _scaleFactor +
                        (_currentVal - index + 1) * (1 - _scaleFactor);
                    matrix = Matrix4.diagonal3Values(1.0, currScale, 1);
                  } else if (_currentVal.floor() - 1 == index) {
                    matrix = Matrix4.diagonal3Values(1.0, _scaleFactor, 1);
                  } else {
                    matrix = Matrix4.diagonal3Values(1.0, _scaleFactor, 1);
                  }

                  return Transform(
                    transform: matrix,
                    child: PageViewTopChild(
                      imgUrl: widget.stats[index].img,
                    ),
                  );
                },
                itemCount: widget.stats.length,
              ),
            ),
          ),
        ),
        Expanded(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: NameTag(
              key: ValueKey(_index),
              name: widget.stats[_index].name,
              attribute: widget.stats[_index].attribute,
              iconUrl: widget.stats[_index].icon,
            ),
          ),
        ),
      ],
    );
  }
}

class PageViewTopChild extends StatelessWidget {
  final String imgUrl;

  const PageViewTopChild({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: '$kImgBaseUrl$imgUrl',
        ),
      ),
    );
  }
}
