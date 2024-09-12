import 'package:all_concepts/screens/center_screen.dart';
import 'package:all_concepts/screens/circle_avatar_screen.dart';
import 'package:all_concepts/screens/clip_r_rect.dart';
import 'package:all_concepts/screens/constrained_box_screen.dart';
import 'package:all_concepts/screens/container_screen.dart';
import 'package:all_concepts/screens/button_screen.dart';
import 'package:all_concepts/screens/custom_font.dart';
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
import 'package:all_concepts/screens/snackbar_screen.dart';
import 'package:all_concepts/screens/stack_screen.dart';
import 'package:all_concepts/screens/text_screen.dart';
import 'package:all_concepts/screens/wrap_screen.dart';
import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AllConceptApp());
}

class AllConceptApp extends StatelessWidget {
  const AllConceptApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All Concept Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List arrFriend = [
      'alexander',
      'brian',
      'chris',
      'devil',
      'eleana',
      'firooz',
      'gita',
    ];

    List listWidget = [
      {
        'title': 'animation',
        'short_description':
            'Adds smooth transitions and effects with widgets like AnimationController and AnimatedContainer.',
        'description':
            'Animation in Flutter helps create smooth transitions and effects. Flutter provides basic animation support using AnimationController, and Tween, along with higher-level widgets like AnimatedContainer and Hero.',
      },
      {
        'title': 'button',
        'short_description':
            'An interactive widget that triggers an action when tapped, commonly used for user inputs or navigation.',
        'description':
            'A button widget (e.g., ElevatedButton, TextButton, OutlinedButton) is an interactive component that triggers an action when tapped. Buttons are typically used for user input, such as submitting forms, navigating between screens, or initiating events. They are highly customizable in terms of color, shape, and behavior, providing essential interactivity in the app’s user interface.',
      },
      {
        'title': 'center',
        'short_description':
            'A widget that centers its child widget within its parent, making alignment in the middle simple.',
        'description':
            'Designed to center its child widget within its parent. It takes a single child and places it in the middle of the available space, making it ideal for aligning elements like text, images, or buttons at the center of the screen or a container. It simplifies positioning without needing complex alignment calculations',
      },
      {
        'title': 'circleAvatar',
        'short_description':
            'The CircleAvatar widget displays a circular image or icon, often used for profile pictures.',
        'description':
            'The CircleAvatar widget in Flutter is used to create a circular profile image or icon. It’s commonly used to display user avatars, allowing you to easily add an image or background color within a circular shape.',
      },
      {
        'title': 'clipRRect',
        'short_description': 'Clips widget with rounded corners.',
        'description':
            'ClipRRect clips its child widget with rounded corners. You can adjust the corner radius to create smooth edges for any widget.'
      },
      {
        'title': 'constrainedBox',
        'short_description': 'Adds size constraints to a widget.',
        'description':
            'ConstrainedBox adds size constraints to its child widget, such as minimum and maximum height and width, ensuring that the child stays within those bounds.',
      },
      {
        'title': 'container',
        'short_description':
            'A flexible layout widget that can hold a child and customize size, padding, margin, and apply decorations like color or borders.',
        'description':
            'Flexible widget used for layout and styling. It can hold a single child and allows you to control properties like width, height, padding, margin, and alignment. Additionally, you can apply decorations such as colors, borders, or shadows, making it useful for building complex layouts and custom UI designs.',
      },
      {
        'title': 'custom Font',
        'short_description': 'Use your own font in the app.',
        'description':
            'Custom Font allows you to use your own font files in the app. You include the font in your project and reference it in the pubspec.yaml file, then apply it to your text widgets.',
      },
      {
        'title': 'expanded',
        'short_description':
            'The Expanded widget fills available space in Row or Column layouts, resizing its child proportionally.',
        'description':
            'The Expanded widget in Flutter is used within a Row, Column, or Flex to make its child widget take up the available remaining space. It flexibly resizes its child in proportion to other children, helping distribute space dynamically based on layout constraints.',
      },
      {
        'title': 'fontAwesomeIcon',
        'short_description': 'Font Awesome icons using a package.',
        'description':
            'FontAwesomeIcon displays icons from the popular Font Awesome icon library. It requires the font_awesome_flutter package and gives access to a wide range of icons.',
      },
      {
        'title': 'gradient',
        'short_description': 'Creates smooth color transitions.',
        'description':
            'Gradient is used to create smooth transitions between colors. Common types include LinearGradient and RadialGradient, which can be applied to backgrounds or shapes.',
      },
      {
        'title': 'gridView',
        'short_description':
            'The GridView widget arranges items in a scrollable 2D grid of rows and columns.',
        'description':
            'The GridView widget in Flutter is used to display widgets in a 2D grid. It arranges items in rows and columns, making it ideal for creating layouts like photo galleries. It supports both fixed and dynamic grids with scrollable content.',
      },
      {
        'title': 'icon',
        'short_description': 'Displays built-in icons like Material Icons.',
        'description':
            'Icon widget displays an icon from a set of built-in icons, typically Material Icons or Cupertino Icons. You can customize its size, color, and other properties.',
      },
      {
        'title': 'image',
        'short_description':
            'The Image widget displays images from assets, network, or files with customizable size and fit.',
        'description':
            'The Image widget in Flutter is used to display images in your app. It supports loading images from various sources like assets, network, or files. You can customize the image\'s size, fit (e.g., cover, contain), alignment, and apply effects like color filters.',
      },
      {
        'title': 'inkwell',
        'short_description':
            'The InkWell widget adds a tappable ripple effect to any widget, making it interactive.',
        'description':
            'The InkWell widget in Flutter provides a material "ripple" effect when tapped, making it ideal for interactive elements. It wraps around any widget to detect taps, gestures, and other interactions, offering a visual feedback to the user.',
      },
      {
        'title': 'input',
        'short_description':
            'Widgets like TextField, Checkbox, and Slider handle user inputs.',
        'description':
            'Input widgets in Flutter allow users to interact with the app. Common input widgets include TextField for text input, Checkbox, Radio, Slider, and Switch for various user selections.',
      },
      {
        'title': 'listView',
        'short_description':
            'The ListView widget creates a scrollable list of widgets, ideal for displaying many items.',
        'description':
            'The ListView widget in Flutter is a scrollable list of widgets arranged linearly. It’s used to display a large number of items vertically or horizontally, with support for both static and dynamic content, lazy loading, and custom item layouts.',
      },
      {
        'title': 'listTile',
        'short_description':
            'The ListTile widget creates a structured row with text and optional icons, used for building list items easily.',
        'description':
            'The ListTile widget in Flutter is a single fixed-height row that typically contains text, an optional leading or trailing icon, and is often used in lists. It simplifies creating standard list items with predefined layouts for icons, titles, and subtitles.',
      },
      {
        'title': 'margin',
        'short_description':
            'Margin adds space outside a widget, separating it from other elements.',
        'description':
            'Margin is a property (typically used in the Container widget) that adds empty space outside the widget\'s boundary, separating it from neighboring elements. This spacing helps with layout and positioning by creating a visual gap around the widget.',
      },
      {
        'title': 'positioned',
        'short_description': 'Positions a widget inside a Stack',
        'description':
            'Positioned is used inside a Stack to position a widget at a specific place within the stack. You can control placement with properties like top, left, right, and bottom.',
      },
      {
        'title': 'richText',
        'short_description': 'Displays text with multiple styles.',
        'description':
            'RichText allows for displaying text with multiple styles. You can style different parts of the text differently within a single widget, like changing colors, fonts, or weights.',
      },
      {
        'title': 'row & column',
        'short_description':
            'Row: Arranges widgets horizontally & Column: Arranges widgets vertically.',
        'description':
            'The Row and Column widgets in Flutter are used for arranging children widgets in a horizontal (Row) or vertical (Column) layout. Both widgets align their children along the main axis (Row: horizontal, Column: vertical) and can control spacing, alignment, and stretching of the children across the cross axis.',
      },
      {
        'title': 'SnackBar',
        'short_description': 'Shows brief messages at the screen bottom.',
        'description':
            'SnackBar displays a brief message at the bottom of the screen. It can have an action button and automatically disappears after a set duration.',
      },
      {
        'title': 'stack',
        'short_description':
            'The Stack widget overlays widgets, positioning them relative to each other for layered layouts.',
        'description':
            'The Stack widget in Flutter allows you to overlay widgets on top of each other. It positions its children relative to the edges of the Stack, making it useful for creating layered or complex UI layouts.',
      },
      {
        'title': 'text',
        'short_description':
            'A widget used to display styled or unstyled text on the screen, customizable with various formatting options.',
        'description':
            'Used to display a string of text on the screen. You can customize its appearance with various styling options like font size, color, weight, and alignment. It’s commonly used to show static or dynamic content in your app, such as labels, messages, or headings, and plays a crucial role in UI design.',
      },
      {
        'title': 'wrap',
        'short_description':
            'The Wrap widget arranges children in multiple lines, automatically wrapping when space is limited.',
        'description':
            'The Wrap widget in Flutter arranges its children in multiple horizontal or vertical lines, automatically moving them to the next line when they exceed the available space. It’s ideal for creating responsive layouts where items need to wrap to fit within the screen.',
      }
    ];
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

                      if (screen == 'button') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ButtonScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'container') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContainerScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'center') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CenterScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'clipRRect') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ClipRRectScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'circleAvatar') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CircleAvatarScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'constrainedBox') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConstrainedBoxScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'custom Font') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CustomFontScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'expanded') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExpandedScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'fontAwesomeIcon') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FontAwesomeIconScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'gradient') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GradientScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'gridView') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GridViewScreen(
                              description: listWidget[index]['description'],
                              arrFriend: arrFriend,
                            ),
                          ),
                        );
                      } else if (screen == 'icon') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IconScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'image') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'inkwell') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InkwellScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'input') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InputScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'listTile') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListTileScreen(
                              description: listWidget[index]['description'],
                              arrFriend: arrFriend,
                            ),
                          ),
                        );
                      } else if (screen == 'listView') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListViewScreen(
                              description: listWidget[index]['description'],
                              arrFriend: arrFriend,
                            ),
                          ),
                        );
                      } else if (screen == 'margin') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MarginScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'positioned') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PositionedScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'richText') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RichTextScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'row & column') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RowsColumnScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'SnackBar') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SnackBarScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'stack') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StackScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'text') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TextScreen(
                              description: listWidget[index]['description'],
                            ),
                          ),
                        );
                      } else if (screen == 'wrap') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WrapScreen(
                              description: listWidget[index]['description'],
                              arrFriend: arrFriend,
                            ),
                          ),
                        );
                      }
                    },
                    title: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        "${listWidget[index]['title'][0].toUpperCase()}${listWidget[index]['title'].substring(1)}",
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
