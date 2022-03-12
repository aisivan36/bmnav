// import 'package:flutter/material.dart' as md;
// import 'package:flutter_test/flutter_test.dart';

// import 'package:bmnav_null_safety/bmnav.dart' as bmnav;

// void main() {
//   testWidgets('`elevation` test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 elevation: 12.0,
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     var m = find
//         .byType(md.Material)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(1)
//         .widget;
//     if (m is md.Material) {
//       expect(m.elevation, 12.0);
//     } else {
//       throw 'should be material';
//     }
//   });

//   testWidgets('`color` test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 color: md.Colors.red,
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     var m = find
//         .byType(md.Material)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(1)
//         .widget;
//     if (m is md.Material) {
//       expect(m.color, md.Colors.red);
//     } else {
//       throw 'should be material';
//     }
//   });

//   testWidgets('`index` test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 index: 1,
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     var workoutsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(1)
//         .widget;
//     if (workoutsIc is md.Icon) {
//       expect(workoutsIc.color, bmnav.defaultOnSelectColor);
//     } else {
//       throw 'should be icon';
//     }
//   });

//   testWidgets('onTap test', (WidgetTester tester) async {
//     var index = 0;
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 labelStyle: bmnav.LabelStyle(visible: false),
//                 onTap: (i) {
//                   setState(() {
//                     index = i;
//                   });
//                 },
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     var workouts = find.descendant(
//         of: find.byType(bmnav.BottomNav),
//         matching: find.byWidgetPredicate((md.Widget w) {
//           if (w is bmnav.BMNavItem) {
//             return w.icon == md.Icons.fitness_center;
//           }
//           return false;
//         }));
//     await tester.tap(workouts);
//     await tester.pumpAndSettle();

//     expect(index, 1);
//   });

//   testWidgets('iconStyle size test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 iconStyle: bmnav.IconStyle(
//                   size: 24.0,
//                   onSelectSize: 28.0,
//                 ),
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     var homeIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(0)
//         .widget;
//     if (homeIc is md.Icon) {
//       expect(homeIc.size, 28.0);
//     } else {
//       throw 'should be icon';
//     }
//     var workoutsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(1)
//         .widget;
//     if (workoutsIc is md.Icon) {
//       expect(workoutsIc.size, 24.0);
//     } else {
//       throw 'should be icon';
//     }
//     var settingsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(2)
//         .widget;
//     if (settingsIc is md.Icon) {
//       expect(settingsIc.size, 24.0);
//     } else {
//       throw 'should be icon';
//     }

//     var workouts = find.descendant(
//         of: find.byType(bmnav.BottomNav),
//         matching: find.byWidgetPredicate((md.Widget w) {
//           if (w is bmnav.BMNavItem) {
//             return w.icon == md.Icons.fitness_center;
//           }
//           return false;
//         }));
//     await tester.tap(workouts);
//     await tester.pumpAndSettle();

//     homeIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(0)
//         .widget;
//     if (homeIc is md.Icon) {
//       expect(homeIc.size, 24.0);
//     } else {
//       throw 'should be icon';
//     }
//     workoutsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(1)
//         .widget;
//     if (workoutsIc is md.Icon) {
//       expect(workoutsIc.size, 28.0);
//     } else {
//       throw 'should be icon';
//     }
//     settingsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(2)
//         .widget;
//     if (settingsIc is md.Icon) {
//       expect(settingsIc.size, 24.0);
//     } else {
//       throw 'should be icon';
//     }

//     var settings = find.descendant(
//         of: find.byType(bmnav.BottomNav),
//         matching: find.byWidgetPredicate((md.Widget w) {
//           if (w is bmnav.BMNavItem) {
//             return w.icon == md.Icons.view_headline;
//           }
//           return false;
//         }));
//     await tester.tap(settings);
//     await tester.pumpAndSettle();

//     homeIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(0)
//         .widget;
//     if (homeIc is md.Icon) {
//       expect(homeIc.size, 24.0);
//     } else {
//       throw 'should be icon';
//     }
//     workoutsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(1)
//         .widget;
//     if (workoutsIc is md.Icon) {
//       expect(workoutsIc.size, 24.0);
//     } else {
//       throw 'should be icon';
//     }
//     settingsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(2)
//         .widget;
//     if (settingsIc is md.Icon) {
//       expect(settingsIc.size, 28.0);
//     } else {
//       throw 'should be icon';
//     }
//   });

//   testWidgets('default size test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     var homeIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(0)
//         .widget;
//     if (homeIc is md.Icon) {
//       expect(homeIc.size, 24.0);
//     } else {
//       throw 'should be icon';
//     }
//     var workoutsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(1)
//         .widget;
//     if (workoutsIc is md.Icon) {
//       expect(workoutsIc.size, 24.0);
//     } else {
//       throw 'should be icon';
//     }
//     var settingsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(2)
//         .widget;
//     if (settingsIc is md.Icon) {
//       expect(settingsIc.size, 24.0);
//     } else {
//       throw 'should be icon';
//     }
//   });

//   testWidgets('iconStyle color test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 iconStyle: bmnav.IconStyle(
//                   color: md.Colors.black,
//                   onSelectColor: md.Colors.green,
//                 ),
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     var homeIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(0)
//         .widget;
//     if (homeIc is md.Icon) {
//       expect(homeIc.color, md.Colors.green);
//     } else {
//       throw 'should be icon';
//     }
//     var workoutsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(1)
//         .widget;
//     if (workoutsIc is md.Icon) {
//       expect(workoutsIc.color, md.Colors.black);
//     } else {
//       throw 'should be icon';
//     }
//     var settingsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(2)
//         .widget;
//     if (settingsIc is md.Icon) {
//       expect(settingsIc.color, md.Colors.black);
//     } else {
//       throw 'should be icon';
//     }

//     var workouts = find.descendant(
//         of: find.byType(bmnav.BottomNav),
//         matching: find.byWidgetPredicate((md.Widget w) {
//           if (w is bmnav.BMNavItem) {
//             return w.icon == md.Icons.fitness_center;
//           }
//           return false;
//         }));
//     await tester.tap(workouts);
//     await tester.pumpAndSettle();

//     homeIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(0)
//         .widget;
//     if (homeIc is md.Icon) {
//       expect(homeIc.color, md.Colors.black);
//     } else {
//       throw 'should be icon';
//     }

//     workoutsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(1)
//         .widget;
//     if (workoutsIc is md.Icon) {
//       expect(workoutsIc.color, md.Colors.green);
//     } else {
//       throw 'should be icon';
//     }

//     settingsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(2)
//         .widget;
//     if (settingsIc is md.Icon) {
//       expect(settingsIc.color, md.Colors.black);
//     } else {
//       throw 'should be icon';
//     }

//     var settings = find.descendant(
//         of: find.byType(bmnav.BottomNav),
//         matching: find.byWidgetPredicate((md.Widget w) {
//           if (w is bmnav.BMNavItem) {
//             return w.icon == md.Icons.view_headline;
//           }
//           return false;
//         }));
//     await tester.tap(settings);
//     await tester.pumpAndSettle();

//     homeIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(0)
//         .widget;
//     if (homeIc is md.Icon) {
//       expect(homeIc.color, md.Colors.black);
//     } else {
//       throw 'should be icon';
//     }

//     workoutsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(1)
//         .widget;
//     if (workoutsIc is md.Icon) {
//       expect(workoutsIc.color, md.Colors.black);
//     } else {
//       throw 'should be icon';
//     }

//     settingsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(2)
//         .widget;
//     if (settingsIc is md.Icon) {
//       expect(settingsIc.color, md.Colors.green);
//     } else {
//       throw 'should be icon';
//     }
//   });

//   testWidgets('default icon color test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     var homeIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(0)
//         .widget;
//     if (homeIc is md.Icon) {
//       expect(homeIc.color, bmnav.defaultOnSelectColor);
//     } else {
//       throw 'should be icon';
//     }

//     var workoutsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(1)
//         .widget;
//     if (workoutsIc is md.Icon) {
//       expect(workoutsIc.color, bmnav.defaultColor);
//     } else {
//       throw 'should be icon';
//     }

//     var settingsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(2)
//         .widget;
//     if (settingsIc is md.Icon) {
//       expect(settingsIc.color, bmnav.defaultColor);
//     } else {
//       throw 'should be icon';
//     }

//     var workouts = find.descendant(
//         of: find.byType(bmnav.BottomNav),
//         matching: find.byWidgetPredicate((md.Widget w) {
//           if (w is bmnav.BMNavItem) {
//             return w.icon == md.Icons.fitness_center;
//           }
//           return false;
//         }));
//     await tester.tap(workouts);
//     await tester.pumpAndSettle();

//     homeIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(0)
//         .widget;
//     if (homeIc is md.Icon) {
//       expect(homeIc.color, bmnav.defaultColor);
//     } else {
//       throw 'should be icon';
//     }

//     workoutsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(1)
//         .widget;
//     if (workoutsIc is md.Icon) {
//       expect(workoutsIc.color, bmnav.defaultOnSelectColor);
//     } else {
//       throw 'should be icon';
//     }

//     settingsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(2)
//         .widget;
//     if (settingsIc is md.Icon) {
//       expect(settingsIc.color, bmnav.defaultColor);
//     } else {
//       throw 'should be icon';
//     }

//     var settings = find.descendant(
//         of: find.byType(bmnav.BottomNav),
//         matching: find.byWidgetPredicate((md.Widget w) {
//           if (w is bmnav.BMNavItem) {
//             return w.icon == md.Icons.view_headline;
//           }
//           return false;
//         }));
//     await tester.tap(settings);
//     await tester.pumpAndSettle();

//     homeIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(0)
//         .widget;
//     if (homeIc is md.Icon) {
//       expect(homeIc.color, bmnav.defaultColor);
//     } else {
//       throw 'should be icon';
//     }

//     workoutsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(1)
//         .widget;
//     if (workoutsIc is md.Icon) {
//       expect(workoutsIc.color, bmnav.defaultColor);
//     } else {
//       throw 'should be icon';
//     }

//     settingsIc = find
//         .byType(md.Icon)
//         .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//         .elementAt(2)
//         .widget;
//     if (settingsIc is md.Icon) {
//       expect(settingsIc.color, bmnav.defaultOnSelectColor);
//     } else {
//       throw 'should be icon';
//     }
//   });

//   testWidgets('labelStyle `textStyle` and `onSelectTextStyle` test',
//       (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 labelStyle: bmnav.LabelStyle(
//                     textStyle: const md.TextStyle(
//                         color: md.Colors.green, fontSize: 14.0),
//                     onSelectTextStyle: const md.TextStyle(
//                         color: md.Colors.red, fontSize: 16.0)),
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     var homeTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Home';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (homeTxt is md.Text) {
//       expect(homeTxt.style!.fontSize, 16.0);
//       expect(homeTxt.style!.color, md.Colors.red);
//     } else {
//       throw 'should be text';
//     }
//     var workoutsTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Workouts';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (workoutsTxt is md.Text) {
//       expect(workoutsTxt.style!.fontSize, 14.0);
//       expect(workoutsTxt.style!.color, md.Colors.green);
//     } else {
//       throw 'should be text';
//     }
//     var settingsTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Settings';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (settingsTxt is md.Text) {
//       expect(settingsTxt.style!.fontSize, 14.0);
//       expect(settingsTxt.style!.color, md.Colors.green);
//     } else {
//       throw 'should be text';
//     }

//     var workouts = find.descendant(
//         of: find.byType(bmnav.BottomNav),
//         matching: find.byWidgetPredicate((md.Widget w) {
//           if (w is bmnav.BMNavItem) {
//             return w.icon == md.Icons.fitness_center;
//           }
//           return false;
//         }));
//     await tester.tap(workouts);
//     await tester.pumpAndSettle();

//     homeTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Home';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (homeTxt is md.Text) {
//       expect(homeTxt.style!.fontSize, 14.0);
//       expect(homeTxt.style!.color, md.Colors.green);
//     } else {
//       throw 'should be text';
//     }
//     workoutsTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Workouts';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (workoutsTxt is md.Text) {
//       expect(workoutsTxt.style!.fontSize, 16.0);
//       expect(workoutsTxt.style!.color, md.Colors.red);
//     } else {
//       throw 'should be text';
//     }
//     settingsTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Settings';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (settingsTxt is md.Text) {
//       expect(settingsTxt.style!.fontSize, 14.0);
//       expect(settingsTxt.style!.color, md.Colors.green);
//     } else {
//       throw 'should be text';
//     }

//     var settings = find.descendant(
//         of: find.byType(bmnav.BottomNav),
//         matching: find.byWidgetPredicate((md.Widget w) {
//           if (w is bmnav.BMNavItem) {
//             return w.icon == md.Icons.view_headline;
//           }
//           return false;
//         }));
//     await tester.tap(settings);
//     await tester.pumpAndSettle();

//     homeTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Home';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (homeTxt is md.Text) {
//       expect(homeTxt.style!.fontSize, 14.0);
//       expect(homeTxt.style!.color, md.Colors.green);
//     } else {
//       throw 'should be text';
//     }
//     workoutsTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Workouts';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (workoutsTxt is md.Text) {
//       expect(workoutsTxt.style!.fontSize, 14.0);
//       expect(workoutsTxt.style!.color, md.Colors.green);
//     } else {
//       throw 'should be text';
//     }
//     settingsTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Settings';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (settingsTxt is md.Text) {
//       expect(settingsTxt.style!.fontSize, 16.0);
//       expect(settingsTxt.style!.color, md.Colors.red);
//     } else {
//       throw 'should be text';
//     }
//   });

//   testWidgets('default label text style! test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     var homeTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Home';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (homeTxt is md.Text) {
//       expect(homeTxt.style!.fontSize, 12.0);
//       expect(homeTxt.style!.color, bmnav.defaultOnSelectColor);
//     } else {
//       throw 'should be text';
//     }
//     var workoutsTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Workouts';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (workoutsTxt is md.Text) {
//       expect(workoutsTxt.style!.fontSize, 12.0);
//       expect(workoutsTxt.style!.color, bmnav.defaultColor);
//     } else {
//       throw 'should be text';
//     }
//     var settingsTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Settings';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (settingsTxt is md.Text) {
//       expect(settingsTxt.style?.fontSize, 12.0);
//       expect(settingsTxt.style?.color, bmnav.defaultColor);
//     } else {
//       throw 'should be text';
//     }

//     var workouts = find.descendant(
//         of: find.byType(bmnav.BottomNav),
//         matching: find.byWidgetPredicate((md.Widget w) {
//           if (w is bmnav.BMNavItem) {
//             return w.icon == md.Icons.fitness_center;
//           }
//           return false;
//         }));
//     await tester.tap(workouts);
//     await tester.pumpAndSettle();

//     homeTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Home';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (homeTxt is md.Text) {
//       expect(homeTxt.style?.fontSize, 12.0);
//       expect(homeTxt.style?.color, bmnav.defaultColor);
//     } else {
//       throw 'should be text';
//     }
//     workoutsTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Workouts';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (workoutsTxt is md.Text) {
//       expect(workoutsTxt.style!.fontSize, 12.0);
//       expect(workoutsTxt.style!.color, bmnav.defaultOnSelectColor);
//     } else {
//       throw 'should be text';
//     }
//     settingsTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Settings';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (settingsTxt is md.Text) {
//       expect(settingsTxt.style!.fontSize, 12.0);
//       expect(settingsTxt.style!.color, bmnav.defaultColor);
//     } else {
//       throw 'should be text';
//     }

//     var settings = find.descendant(
//         of: find.byType(bmnav.BottomNav),
//         matching: find.byWidgetPredicate((md.Widget w) {
//           if (w is bmnav.BMNavItem) {
//             return w.icon == md.Icons.view_headline;
//           }
//           return false;
//         }));
//     await tester.tap(settings);
//     await tester.pumpAndSettle();

//     homeTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Home';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (homeTxt is md.Text) {
//       expect(homeTxt.style!.fontSize, 12.0);
//       expect(homeTxt.style!.color, bmnav.defaultColor);
//     } else {
//       throw 'should be text';
//     }
//     workoutsTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Workouts';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (workoutsTxt is md.Text) {
//       expect(workoutsTxt.style!.fontSize, 12.0);
//       expect(workoutsTxt.style!.color, bmnav.defaultColor);
//     } else {
//       throw 'should be text';
//     }
//     settingsTxt = find
//         .descendant(
//             of: find.byType(bmnav.BottomNav),
//             matching: find.byWidgetPredicate((md.Widget w) {
//               if (w is md.Text) return w.data == 'Settings';
//               return false;
//             }))
//         .evaluate()
//         .elementAt(0)
//         .widget;
//     if (settingsTxt is md.Text) {
//       expect(settingsTxt.style!.fontSize, 12.0);
//       expect(settingsTxt.style!.color, bmnav.defaultOnSelectColor);
//     } else {
//       throw 'should be text';
//     }
//   });

//   testWidgets('labelStyle.showOnSelect test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 labelStyle: bmnav.LabelStyle(showOnSelect: true),
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     expect(
//         find
//             .text('Home')
//             .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//             .length,
//         isNot(0));
//     expect(
//         find
//             .text('Workouts')
//             .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//             .length,
//         equals(0));
//     expect(
//         find
//             .text('Settings')
//             .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//             .length,
//         equals(0));

//     var workouts = find.descendant(
//         of: find.byType(bmnav.BottomNav),
//         matching: find.byWidgetPredicate((md.Widget w) {
//           if (w is bmnav.BMNavItem) {
//             return w.icon == md.Icons.fitness_center;
//           }
//           return false;
//         }));
//     await tester.tap(workouts);
//     await tester.pumpAndSettle();

//     expect(
//         find
//             .text('Home')
//             .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//             .length,
//         equals(0));
//     expect(
//         find
//             .text('Workouts')
//             .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//             .length,
//         isNot(0));
//     expect(
//         find
//             .text('Settings')
//             .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//             .length,
//         equals(0));

//     var settings = find.descendant(
//         of: find.byType(bmnav.BottomNav),
//         matching: find.byWidgetPredicate((md.Widget w) {
//           if (w is bmnav.BMNavItem) {
//             return w.icon == md.Icons.view_headline;
//           }
//           return false;
//         }));
//     await tester.tap(settings);
//     await tester.pumpAndSettle();

//     expect(
//         find
//             .text('Home')
//             .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//             .length,
//         equals(0));
//     expect(
//         find
//             .text('Workouts')
//             .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//             .length,
//         equals(0));
//     expect(
//         find
//             .text('Settings')
//             .apply(find.byType(bmnav.BottomNav).first.allCandidates)
//             .length,
//         isNot(0));
//   });

//   testWidgets('labelStyle.visible test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 labelStyle: bmnav.LabelStyle(visible: true),
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     var items = find.descendant(
//         of: find.byType(bmnav.BottomNav).first,
//         matching: find.byElementType(bmnav.BMNavItem));

//     var home = find.text('Home').apply(items.allCandidates).length;
//     var workouts = find.text('Workouts').apply(items.allCandidates).length;
//     var settings = find.text('Settings').apply(items.allCandidates).length;

//     expect(home, isNot(0));
//     expect(workouts, isNot(0));
//     expect(settings, isNot(0));
//   });

//   testWidgets('labelStyle.visible false test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 labelStyle: bmnav.LabelStyle(visible: false),
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     var items = find.descendant(
//         of: find.byType(bmnav.BottomNav).first,
//         matching: find.byElementType(bmnav.BMNavItem));

//     var home = find.text('Home').apply(items.allCandidates).length;
//     var workouts = find.text('Workouts').apply(items.allCandidates).length;
//     var settings = find.text('Settings').apply(items.allCandidates).length;

//     expect(home, equals(0));
//     expect(workouts, equals(0));
//     expect(settings, equals(0));
//   });

//   testWidgets('same height with label test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     expect(tester.getSize(find.byType(bmnav.BottomNav).first).height,
//         equals(56.0));
//   });

//   testWidgets('same height with no label test', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 labelStyle: bmnav.LabelStyle(visible: false),
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     expect(tester.getSize(find.byType(bmnav.BottomNav).first).height,
//         equals(56.0));
//   });

//   testWidgets('same height with label on select test',
//       (WidgetTester tester) async {
//     await tester.pumpWidget(
//       md.StatefulBuilder(
//         builder: (md.BuildContext context, md.StateSetter setState) {
//           return md.MaterialApp(
//             home: md.Scaffold(
//               body: const md.Center(
//                 child: md.Text('Hello World'),
//               ),
//               bottomNavigationBar: bmnav.BottomNav(
//                 labelStyle: bmnav.LabelStyle(showOnSelect: true),
//                 items: const [
//                   bmnav.BottomNavItem(icon: md.Icons.home, label: 'Home'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.fitness_center, label: 'Workouts'),
//                   bmnav.BottomNavItem(
//                       icon: md.Icons.view_headline, label: 'Settings')
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );

//     expect(tester.getSize(find.byType(bmnav.BottomNav).first).height,
//         equals(56.0));
//   });
// }
