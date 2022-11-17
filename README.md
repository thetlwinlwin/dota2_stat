# dota2_stat_river

A new Flutter project.

## Getting Started

- Read the state notifier providers in loading page state.
```
 ref.read(idStatApiStateProvider);
 ```
- Return plain notifier. Not notifier with cascade method.
- Use listen method to listen the another state notifier. Then you call your method to modify state of that provider inside the callback function.

```
  final notifier = IdStatApiStateNotifier(
    repo: ref.watch(repositoryProvider),
  );
  ref.listen(
    userDataProvider,
    (_, next) {
      notifier.reset(data: next);
    },
  );
  return notifier;
```
- Above method is used to make sure not triggering the error union type when initializing.
- IdStat and RecentMatches depends on the userData.
- Altho it is not encouraging to use cascade operator, it is used in herostatprovider as it just need to load from the network.
- Stretching the column in page_viewer_build.dart to get all the available width.
- Matrix in PageView.builder is from [this link](https://www.youtube.com/watch?v=U61kyISnPZQ&t=1919s).
- Staggered animation for menu list items was added in menu_list.dart. heavily inspired from [flutter officials](https://docs.flutter.dev/cookbook/effects/staggered-menu-animation).
- Rotated Text is also added in gridview.
- Added sorting to heroList.

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
