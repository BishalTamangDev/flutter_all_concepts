import 'package:all_concepts/screens/center_screen.dart';
import 'package:all_concepts/screens/container_screen.dart';
import 'package:all_concepts/screens/button_screen.dart';
import 'package:all_concepts/screens/expanded_screen.dart';
import 'package:all_concepts/screens/image_screen.dart';
import 'package:all_concepts/screens/margin_screen.dart';
import 'package:all_concepts/screens/rows_columns_screen.dart';
import 'package:all_concepts/screens/text_screen.dart';
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
    List listWidget = [
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
        'title': 'container',
        'short_description':
            'A flexible layout widget that can hold a child and customize size, padding, margin, and apply decorations like color or borders.',
        'description':
            'Flexible widget used for layout and styling. It can hold a single child and allows you to control properties like width, height, padding, margin, and alignment. Additionally, you can apply decorations such as colors, borders, or shadows, making it useful for building complex layouts and custom UI designs.',
      },
      {
        'title': 'expanded',
        'short_description':
            'The Expanded widget fills available space in Row or Column layouts, resizing its child proportionally.',
        'description':
            'The Expanded widget in Flutter is used within a Row, Column, or Flex to make its child widget take up the available remaining space. It flexibly resizes its child in proportion to other children, helping distribute space dynamically based on layout constraints.'
      },
      {
        'title': 'image',
        'short_description':
            'The Image widget displays images from assets, network, or files with customizable size and fit.',
        'description':
            'The Image widget in Flutter is used to display images in your app. It supports loading images from various sources like assets, network, or files. You can customize the image\'s size, fit (e.g., cover, contain), alignment, and apply effects like color filters.',
      },
      {
        'title': 'margin',
        'short_description':
            'Margin adds space outside a widget, separating it from other elements.',
        'description':
            'Margin is a property (typically used in the Container widget) that adds empty space outside the widget\'s boundary, separating it from neighboring elements. This spacing helps with layout and positioning by creating a visual gap around the widget.'
      },
      {
        'title': 'row & column',
        'short_description':
            'Row: Arranges widgets horizontally & Column: Arranges widgets vertically.',
        'description':
            'The Row and Column widgets in Flutter are used for arranging children widgets in a horizontal (Row) or vertical (Column) layout. Both widgets align their children along the main axis (Row: horizontal, Column: vertical) and can control spacing, alignment, and stretching of the children across the cross axis.',
      },
      {
        'title': 'text',
        'short_description':
            'A widget used to display styled or unstyled text on the screen, customizable with various formatting options.',
        'description':
            'Used to display a string of text on the screen. You can customize its appearance with various styling options like font size, color, weight, and alignment. It’s commonly used to show static or dynamic content in your app, such as labels, messages, or headings, and plays a crucial role in UI design.',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Widgets"),
      ),
      body: Container(
        color: Variables.getBgColor(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    String screen = listWidget[index]['title'];

                    if (screen == 'container') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContainerScreen(
                            description: listWidget[index]['description'],
                          ),
                        ),
                      );
                    } else if (screen == 'button') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ButtonScreen(
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
                    } else if (screen == 'expanded') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ExpandedScreen(
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
                    } else if (screen == 'margin') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MarginScreen(
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
                    } else if (screen == 'text') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TextScreen(
                            description: listWidget[index]['description'],
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
    );
  }
}
