# bmnav_null_safety

This is forked from [bmnav](https://github.com/edwnjos/bmnav) to migrate to null safety, nothing else.

A very flexible Flutter implementation of the Bottom Navigation Bar.

![BottomNavigationBar with label](https://raw.githubusercontent.com/edwnjos/bmnav/master/screenshots/with-label.gif)

![BottomNavigationBar with label when selected](https://raw.githubusercontent.com/edwnjos/bmnav/master/screenshots/with-select-label.gif)

![BottomNavigationBar without label](https://raw.githubusercontent.com/edwnjos/bmnav/master/screenshots/without-label.gif)

## Get Started

Add `bmnav_null_safety` to your `pubspec.yaml` file:

```yaml
dependencies:
  bmnav_null_safety:
    git:
      url: https://github.com/aisivan36/bmnav_null_safety.git

```

Import `bmnav_null_safety` in your main.dart file:

```dart
import 'package:bmnav_null_safety/bmnav.dart' as bmnav;
```

Implement `bmnav.BottomNav` in the `bottomNavigationBar` parameter in the Scaffold widget:

```dart
@override
Widget build(BuildContext ctx) {
	return Scaffold(
		appBar: AppBar(title: Text('Bottom Nav Demo')),
		body: Container(child: Text('Hello World')),
		bottomNavigationBar: bmnav.BottomNav(
			items: [
				bmnav.BottomNavItem(Icons.home),
				bmnav.BottomNavItem(Icons.fitness_center),
				bmnav.BottomNavItem(Icons.person),
				bmnav.BottomNavItem(Icons.view_headline)
			],
		),
	);
}
```

You can find a fully fledged example with navigation and custom styles [here](https://github.com/edwnjos/bmnav/blob/master/example/lib/main.dart).

## Props

| Name       | Explanation                                                                | Default      |
| ---------- | -------------------------------------------------------------------------- | ------------ |
| index      | starting index                                                             | 0            |
| onTap      | callback when a bottom nav item is pressed                                 | null         |
| items      | bottom nav items                                                           | null         |
| elevation  | elevation of bottom nav                                                    | 8.0          |
| color      | background color                                                           | Colors.white |
| iconStyle  | icon styles (`size`, `onSelectSize`, `color`, `onSelectColor`)             | null         |
| labelStyle | label styles (`visible`, `showOnSelect`, `textStyle`, `onSelectTextStyle`) | null         |

## Contributions

Feel free to contribute to this project.

## Support

If you found this project to be useful then please consider donating to help me continue maintaining this project and create new projects.
