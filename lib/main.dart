import 'package:all_concepts/screens/alertdialog.dart';
import 'package:all_concepts/screens/bottom_sheet_screen.dart';
import 'package:all_concepts/screens/button_screen.dart';
import 'package:all_concepts/screens/center_screen.dart';
import 'package:all_concepts/screens/circle_avatar_screen.dart';
import 'package:all_concepts/screens/clip_r_rect.dart';
import 'package:all_concepts/screens/constrained_box_screen.dart';
import 'package:all_concepts/screens/container_screen.dart';
import 'package:all_concepts/screens/custom_font.dart';
import 'package:all_concepts/screens/drawer_screen.dart';
import 'package:all_concepts/screens/expanded_screen.dart';
import 'package:all_concepts/screens/fontawesome_icon_screen.dart';
import 'package:all_concepts/screens/gradient_screen.dart';
import 'package:all_concepts/screens/gridview_screen.dart';
import 'package:all_concepts/screens/icon_screen.dart';
import 'package:all_concepts/screens/image_screen.dart';
import 'package:all_concepts/screens/inkwell_screen.dart';
import 'package:all_concepts/screens/input_screen.dart';
import 'package:all_concepts/screens/listtile_screen.dart';
import 'package:all_concepts/screens/listview_screen.dart';
import 'package:all_concepts/screens/margin_screen.dart';
import 'package:all_concepts/screens/positioned_screen.dart';
import 'package:all_concepts/screens/rich_text_screen.dart';
import 'package:all_concepts/screens/rows_columns_screen.dart';
import 'package:all_concepts/screens/shared_preference_screen.dart';
import 'package:all_concepts/screens/sliver_app_bar_screen.dart';
import 'package:all_concepts/screens/snackbar_screen.dart';
import 'package:all_concepts/screens/splash_home_screen.dart';
import 'package:all_concepts/screens/stack_screen.dart';
import 'package:all_concepts/screens/text_screen.dart';
import 'package:all_concepts/screens/wrap_screen.dart';
import 'package:all_concepts/variables/variables.dart';
import 'package:all_concepts/variables/widget_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'bottom_navigation_bar/bottom_navigation_bar.dart';

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/alertDialog/:description',
      name: 'alertDialog',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return AlertDialogScreen(description: description);
      },
    ),
    GoRoute(
      path: '/bottomNavigationBar/:description',
      name: 'bottomNavigationBar',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return BottomNavigationBarScreen(description: description);
      },
    ),
    GoRoute(
      path: '/bottomSheet/:description',
      name: 'bottomSheet',
      builder: (context, state) {
        final String description = state.pathParameters['description'] ?? "Empty!";
        return BottomSheetScreen(description: description);
      },
    ),
    GoRoute(
      path: '/button/:description',
      name: 'button',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return ButtonScreen(description: description);
      },
    ),
    GoRoute(
      path: '/center/:description',
      name: 'center',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return CenterScreen(description: description);
      },
    ),
    GoRoute(
      path: '/circleAvatar/:description',
      name: 'circleAvatar',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return CircleAvatarScreen(description: description);
      },
    ),
    GoRoute(
      path: '/clipRRect/:description',
      name: 'clipRRect',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return ClipRRectScreen(description: description);
      },
    ),
    GoRoute(
      path: '/constrainedBox/:description',
      name: 'constrainedBox',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return ConstrainedBoxScreen(description: description);
      },
    ),
    GoRoute(
      path: '/container/:description',
      name: 'container',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return ContainerScreen(description: description);
      },
    ),
    GoRoute(
      path: '/customFont/:description',
      name: 'customFont',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return CustomFontScreen(description: description);
      },
    ),
    GoRoute(
      path: '/drawer/:description',
      name: 'drawer',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return DrawerScreen(description: description);
      },
    ),
    GoRoute(
      path: '/expanded/:description',
      name: 'expanded',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return ExpandedScreen(description: description);
      },
    ),
    GoRoute(
      path: '/fontAwesomeIcon/:description',
      name: 'fontAwesomeIcon',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return FontAwesomeIconScreen(description: description);
      },
    ),
    GoRoute(
      path: '/gradient/:description',
      name: 'gradient',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return GradientScreen(description: description);
      },
    ),
    GoRoute(
      path: '/gridView/:description',
      name: 'gridView',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return GridViewScreen(
          description: description,
        );
      },
    ),
    GoRoute(
      path: '/icon/:description',
      name: 'icon',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return IconScreen(description: description);
      },
    ),
    GoRoute(
      path: '/image/:description',
      name: 'image',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return ImageScreen(description: description);
      },
    ),
    GoRoute(
      path: '/inkWell/:description',
      name: 'inkWell',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return InkwellScreen(description: description);
      },
    ),
    GoRoute(
      path: '/input/:description',
      name: 'input',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return InputScreen(description: description);
      },
    ),
    GoRoute(
      path: '/listView/:description',
      name: 'listView',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return ListViewScreen(
          description: description,
        );
      },
    ),
    GoRoute(
      path: '/listTile/:description',
      name: 'listTile',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return ListTileScreen(
          description: description,
          arrFriend: const [],
        );
      },
    ),
    GoRoute(
      path: '/margin/:description',
      name: 'margin',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return MarginScreen(description: description);
      },
    ),
    GoRoute(
      path: '/positioned/:description',
      name: 'positioned',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return PositionedScreen(description: description);
      },
    ),
    GoRoute(
      path: '/richText/:description',
      name: 'richText',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return RichTextScreen(description: description);
      },
    ),
    GoRoute(
      path: '/rowColumn/:description',
      name: 'rowColumn',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return RowsColumnScreen(description: description);
      },
    ),
    GoRoute(
      path: '/sharedPreference/:description',
      name: 'sharedPreference',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return SharedPreferenceScreen(description: description);
      },
    ),
    GoRoute(
      path: '/sliverAppBar/:description',
      name: 'sliverAppBar',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return SliverAppBarScreen(description: description);
      },
    ),
    GoRoute(
      path: '/snackBar/:description',
      name: 'snackBar',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return SnackBarScreen(description: description);
      },
    ),
    GoRoute(
      path: '/splashScreen/:description',
      name: 'splashScreen',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return SplashHomeScreen(description: description);
      },
    ),
    GoRoute(
      path: '/stack/:description',
      name: 'stack',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return StackScreen(description: description);
      },
    ),
    GoRoute(
      path: '/text/:description',
      name: 'text',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return TextScreen(description: description);
      },
    ),
    GoRoute(
      path: '/wrap/:description',
      name: 'wrap',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return WrapScreen(
          description: description,
          arrFriend: [],
        );
      },
    ),
  ],
  errorBuilder: (context, state) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Icon(Icons.hourglass_empty),
            SizedBox(height: 10.0),
            Text("Page Not Found!"),
          ],
        ),
      ),
    );
  },
);

void main() {
  runApp(const AllConceptApp());
}

class AllConceptApp extends StatelessWidget {
  const AllConceptApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'All Concept Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        useMaterial3: false,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          bodyMedium: TextStyle(
            fontSize: 18,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Widgets"),
      ),
      body: Container(
        color: Variables.getBgColor(),
        child: Container(
          color: Variables.getBgColor(),
          margin: const EdgeInsets.only(bottom: 16.0),
          child: Padding(
            padding: Variables.getLeftRightPadding(),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.only(
                    top: 16.0,
                  ),
                  child: ListTile(
                    onTap: () {
                      String screen = listWidget[index]['title'];

                      if (screen == 'AlertDialog') {
                        context.pushNamed('alertDialog', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'BottomSheet') {
                        context.pushNamed('bottomSheet', pathParameters: {
                          'description':
                          listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'BottomNavigationBar') {
                        context.pushNamed('bottomNavigationBar',
                            pathParameters: {
                              'description':
                                  listWidget[index]['description'].toString()
                            });
                      } else if (screen == 'Button') {
                        context.pushNamed('button', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Container') {
                        context.pushNamed('container', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Center') {
                        context.pushNamed('center', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'ClipRRect') {
                        context.pushNamed('clipRRect', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'CircleAvatar') {
                        context.pushNamed('circleAvatar', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'ConstrainedBox') {
                        context.pushNamed('constrainedBox', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Custom Font') {
                        context.pushNamed('customFont', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Drawer') {
                        context.pushNamed('drawer', pathParameters: {
                          'description':
                          listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Expanded') {
                        context.pushNamed('expanded', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'FontAwesomeIcon') {
                        context.pushNamed('fontAwesomeIcon', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Gradient') {
                        context.pushNamed('gradient', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'GridView') {
                        context.pushNamed('gridView', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString(),
                        });
                      } else if (screen == 'Icon') {
                        context.pushNamed('icon', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Image') {
                        context.pushNamed('image', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Inkwell') {
                        context.pushNamed('inkWell', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Input') {
                        context.pushNamed('input', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'ListTile') {
                        context.pushNamed('listTile', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'ListView') {
                        context.pushNamed('listView', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Margin') {
                        context.pushNamed('margin', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Positioned') {
                        context.pushNamed('positioned', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'RichText') {
                        context.pushNamed('richText', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Row & Column') {
                        context.pushNamed('rowColumn', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'SharedPreference') {
                        context.pushNamed('sharedPreference', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'SliverAppBar') {
                        context.pushNamed('sliverAppBar', pathParameters: {
                          'description':
                          listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'SnackBar') {
                        context.pushNamed('snackBar', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'SplashScreen') {
                        context.pushNamed('splashScreen', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Stack') {
                        context.pushNamed('stack', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Text') {
                        context.pushNamed('text', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      } else if (screen == 'Wrap') {
                        context.pushNamed('wrap', pathParameters: {
                          'description':
                              listWidget[index]['description'].toString()
                        });
                      }
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        "${listWidget[index]['title']}",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(
                        top: 5.0,
                        bottom: 5.0,
                      ),
                      child: Text(
                        listWidget[index]['short_description'],
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_right,
                      color: Colors.blueGrey,
                    ),
                  ),
                );
              },
              itemCount: listWidget.length,
            ),
          ),
        ),
      ),
    );
  }
}
