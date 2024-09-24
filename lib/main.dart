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
import 'package:all_concepts/screens/page_not_found_screen.dart';
import 'package:all_concepts/screens/positioned_screen.dart';
import 'package:all_concepts/screens/rich_text_screen.dart';
import 'package:all_concepts/screens/rows_columns_screen.dart';
import 'package:all_concepts/screens/shared_preference_screen.dart';
import 'package:all_concepts/screens/sliver_app_bar_screen.dart';
import 'package:all_concepts/screens/snackbar_screen.dart';
import 'package:all_concepts/screens/splash_home_screen.dart';
import 'package:all_concepts/screens/stack_screen.dart';
import 'package:all_concepts/screens/tab_screen.dart';
import 'package:all_concepts/screens/text_screen.dart';
import 'package:all_concepts/screens/wrap_screen.dart';
import 'package:all_concepts/theme/theme.dart';
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
      path: '/alert-dialog/:description',
      name: 'alert-dialog',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return AlertDialogScreen(description: description);
      },
    ),
    GoRoute(
      path: '/bottom-navigation-bar/:description',
      name: 'bottom-navigation-bar',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return BottomNavigationBarScreen(description: description);
      },
    ),
    GoRoute(
      path: '/bottom-sheet/:description',
      name: 'bottom-sheet',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? "Empty!";
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
      path: '/circle-avatar/:description',
      name: 'circle-avatar',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return CircleAvatarScreen(description: description);
      },
    ),
    GoRoute(
      path: '/clip-r-rect/:description',
      name: 'clip-r-rect',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return ClipRRectScreen(description: description);
      },
    ),
    GoRoute(
      path: '/constrained-box/:description',
      name: 'constrained-box',
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
      path: '/custom-font/:description',
      name: 'custom-font',
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
      path: '/font-awesome-icon/:description',
      name: 'font-awesome-icon',
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
      path: '/grid-view/:description',
      name: 'grid-view',
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
      path: '/ink-well/:description',
      name: 'ink-well',
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
      path: '/list-view/:description',
      name: 'list-view',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return ListViewScreen(
          description: description,
        );
      },
    ),
    GoRoute(
      path: '/list-tile/:description',
      name: 'list-tile',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return ListTileScreen(description: description);
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
      path: '/rich-text/:description',
      name: 'rich-text',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return RichTextScreen(description: description);
      },
    ),
    GoRoute(
      path: '/row-column/:description',
      name: 'row-column',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return RowsColumnScreen(description: description);
      },
    ),
    GoRoute(
      path: '/shared-preference/:description',
      name: 'shared-preference',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return SharedPreferenceScreen(description: description);
      },
    ),
    GoRoute(
      path: '/sliver-app-bar/:description',
      name: 'sliver-app-bar',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return SliverAppBarScreen(description: description);
      },
    ),
    GoRoute(
      path: '/snack-bar/:description',
      name: 'snack-bar',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return SnackBarScreen(description: description);
      },
    ),
    GoRoute(
      path: '/splash-screen/:description',
      name: 'splash-screen',
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
      path: '/tab/:description',
      name: 'tab',
      builder: (context, state) {
        final String description =
            state.pathParameters['description'] ?? 'Empty!';
        return TabScreen(description: description);
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
    GoRoute(
      path: '/page-not-found',
      name: 'page-not-found',
      builder: (context, state) => const PageNotFoundScreen(),
    ),
  ],
  errorBuilder: (context, state) => const PageNotFoundScreen(),
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
      theme: lightTheme,
      darkTheme: darkTheme,
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
        title: Text(
          "Widgets",
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
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

                      switch (screen) {
                        case 'AlertDialog':
                          context.pushNamed('alert-dialog', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'BottomSheet':
                          context.pushNamed('bottom-sheet', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'BottomNavigationBar':
                          context.pushNamed('bottom-navigation-bar',
                              pathParameters: {
                                'description':
                                    listWidget[index]['description'].toString()
                              });
                          break;
                        case 'Button':
                          context.pushNamed('button', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'Container':
                          context.pushNamed('container', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'Center':
                          context.pushNamed('center', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'ClipRRect':
                          context.pushNamed('clip-r-rect', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'CircleAvatar':
                          context.pushNamed('circle-avatar', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'ConstrainedBox':
                          context.pushNamed('constrained-box', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                        case 'Custom Font':
                          context.pushNamed('custom-font', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'Drawer':
                          context.pushNamed('drawer', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'Expanded':
                          context.pushNamed('expanded', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'FontAwesomeIcon':
                          context.pushNamed('font-awesome-icon',
                              pathParameters: {
                                'description':
                                    listWidget[index]['description'].toString()
                              });
                          break;
                        case 'Gradient':
                          context.pushNamed('gradient', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'GridView':
                          context.pushNamed('grid-view', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString(),
                          });
                          break;
                        case 'Icon':
                          context.pushNamed('icon', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'Image':
                          context.pushNamed('image', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'Inkwell':
                          context.pushNamed('ink-well', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'Input':
                          context.pushNamed('input', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'ListTile':
                          context.pushNamed('list-tile', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'ListView':
                          context.pushNamed('list-view', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'Margin':
                          context.pushNamed('margin', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'Positioned':
                          context.pushNamed('positioned', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'RichText':
                          context.pushNamed('rich-text', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'Row & Column':
                          context.pushNamed('row-column', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'SharedPreference':
                          context.pushNamed('shared-preference',
                              pathParameters: {
                                'description':
                                    listWidget[index]['description'].toString()
                              });
                          break;
                        case 'SliverAppBar':
                          context.pushNamed('sliver-app-bar', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'SnackBar':
                          context.pushNamed('snack-bar', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'SplashScreen':
                          context.pushNamed('splash-screen', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'Stack':
                          context.pushNamed('stack', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'Tab':
                          context.pushNamed('tab', pathParameters: {
                            'description':
                            listWidget[index]['description'].toString()
                          });
                          break;
                        case 'Text':
                          context.pushNamed('text', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        case 'Wrap':
                          context.pushNamed('wrap', pathParameters: {
                            'description':
                                listWidget[index]['description'].toString()
                          });
                          break;
                        default:
                          context.pushNamed('page-not-found');
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
                      child: Opacity(
                        opacity: 0.7,
                        child: Text(
                          listWidget[index]['short_description'],
                        ),
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      color: Theme.of(context).colorScheme.primary,
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
