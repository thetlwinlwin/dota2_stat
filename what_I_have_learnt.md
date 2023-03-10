## What I have learnt(check cfa80c84478f48e53d8e8b3c87cfcc49bd9013ff and their ancestors)
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

## What I have learnt(after cfa80c84478f48e53d8e8b3c87cfcc49bd9013ff)

- refactor the dark and light theme.
- sorting list was moved out from the ui layers and used "compute" function.
- convert idstats, heroStats and recents state notifier provider to future provider.
- the biggest drawback of converting to futureprovider is that there are loading everywhere.
- preload idstat future provider in home page.
- if you want to add image to leading widget in listTile(not circle avatar), predefine the width and use column to adjust to the center.
- can use fractionallysizedbox in listview or scrollview etc. but axis must not be the same. for example, if you use widthFactor and listview axis is horizontal, it won't work.
- In scaffold, add resizeToAvoidBottomInset: false means the screen will stay the same and will not resize if keyboard appears. 
- There are global variables (usually starts with "k") that can be used in your project. For example, kElevationToShadow in statbodycontainer.dart.
- go_router redirects is complicated. 