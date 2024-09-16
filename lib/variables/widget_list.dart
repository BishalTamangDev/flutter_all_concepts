final List<Map> listWidget = [
  {
    'title': 'AlertDialog',
    'short_description':
        'Pop-up dialog with info or actions for user acknowledgment.',
    'description':
        'An AlertDialog displays a pop-up dialog with important information or actions requiring user acknowledgment. It typically contains a title, content, and action buttons like "OK" or "Cancel."',
  },
  {
    'title': 'Animation',
    'short_description':
        'Adds smooth transitions and effects with widgets like AnimationController and AnimatedContainer.',
    'description':
        'Animation in Flutter helps create smooth transitions and effects. Flutter provides basic animation support using AnimationController, and Tween, along with higher-level widgets like AnimatedContainer and Hero.',
  },
  {
    'title': 'BottomNavigationBar',
    'short_description':
        'Navigation bar at the bottom for switching between pages.',
    'description':
        'BottomNavigationBar is a widget used for navigation between different sections or pages in an app. It is displayed at the bottom of the screen and usually contains multiple icons or text labels representing different routes.',
  },
  {
    'title': 'BottomSheet',
    'short_description':
        'The Bottom Sheet is a sliding panel in Flutter that shows extra options or info, either temporarily (modal) or persistently, enhancing user interaction without navigating away.',
    'description':
        'The Bottom Sheet widget in Flutter is a panel that slides up from the bottom of the screen, used to display additional content or actions. It can be modal (blocks other interactions) or persistent (stays on screen while interacting with other elements). It is commonly used for quick settings, options, or additional actions.',
  },
  {
    'title': 'Button',
    'short_description':
        'An interactive widget that triggers an action when tapped, commonly used for user inputs or navigation.',
    'description':
        'A button widget (e.g., ElevatedButton, TextButton, OutlinedButton) is an interactive component that triggers an action when tapped. Buttons are typically used for user input, such as submitting forms, navigating between screens, or initiating events. They are highly customizable in terms of color, shape, and behavior, providing essential interactivity in the app’s user interface.',
  },
  {
    'title': 'Center',
    'short_description':
        'A widget that centers its child widget within its parent, making alignment in the middle simple.',
    'description':
        'Designed to center its child widget within its parent. It takes a single child and places it in the middle of the available space, making it ideal for aligning elements like text, images, or buttons at the center of the screen or a container. It simplifies positioning without needing complex alignment calculations',
  },
  {
    'title': 'CircleAvatar',
    'short_description':
        'The CircleAvatar widget displays a circular image or icon, often used for profile pictures.',
    'description':
        'The CircleAvatar widget in Flutter is used to create a circular profile image or icon. It’s commonly used to display user avatars, allowing you to easily add an image or background color within a circular shape.',
  },
  {
    'title': 'ClipRRect',
    'short_description': 'Clips widget with rounded corners.',
    'description':
        'ClipRRect clips its child widget with rounded corners. You can adjust the corner radius to create smooth edges for any widget.'
  },
  {
    'title': 'ConstrainedBox',
    'short_description': 'Adds size constraints to a widget.',
    'description':
        'ConstrainedBox adds size constraints to its child widget, such as minimum and maximum height and width, ensuring that the child stays within those bounds.',
  },
  {
    'title': 'Container',
    'short_description':
        'A flexible layout widget that can hold a child and customize size, padding, margin, and apply decorations like color or borders.',
    'description':
        'Flexible widget used for layout and styling. It can hold a single child and allows you to control properties like width, height, padding, margin, and alignment. Additionally, you can apply decorations such as colors, borders, or shadows, making it useful for building complex layouts and custom UI designs.',
  },
  {
    'title': 'Custom Font',
    'short_description': 'Use your own font in the app.',
    'description':
        'Custom Font allows you to use your own font files in the app. You include the font in your project and reference it in the pubspec.yaml file, then apply it to your text widgets.',
  },
  {
    'title': 'Drawer',
    'short_description':
        'The Drawer widget is a side panel in Flutter, used for app navigation. It slides in from the side and is often triggered by the AppBar\'s menu icon.',
    'description':
        'The Drawer widget in Flutter is a slide-in panel from the side of the screen, typically used for navigation. It allows users to access different sections or features of an app without cluttering the main interface. A Drawer is often paired with an AppBar to open and close it easily.',
  },
  {
    'title': 'Expanded',
    'short_description':
        'The Expanded widget fills available space in Row or Column layouts, resizing its child proportionally.',
    'description':
        'The Expanded widget in Flutter is used within a Row, Column, or Flex to make its child widget take up the available remaining space. It flexibly resizes its child in proportion to other children, helping distribute space dynamically based on layout constraints.',
  },
  {
    'title': 'FontAwesomeIcon',
    'short_description': 'Font Awesome icons using a package.',
    'description':
        'FontAwesomeIcon displays icons from the popular Font Awesome icon library. It requires the font_awesome_flutter package and gives access to a wide range of icons.',
  },
  {
    'title': 'Gradient',
    'short_description': 'Creates smooth color transitions.',
    'description':
        'Gradient is used to create smooth transitions between colors. Common types include LinearGradient and RadialGradient, which can be applied to backgrounds or shapes.',
  },
  {
    'title': 'GridView',
    'short_description':
        'The GridView widget arranges items in a scrollable 2D grid of rows and columns.',
    'description':
        'The GridView widget in Flutter is used to display widgets in a 2D grid. It arranges items in rows and columns, making it ideal for creating layouts like photo galleries. It supports both fixed and dynamic grids with scrollable content.',
  },
  {
    'title': 'Icon',
    'short_description': 'Displays built-in icons like Material Icons.',
    'description':
        'Icon widget displays an icon from a set of built-in icons, typically Material Icons or Cupertino Icons. You can customize its size, color, and other properties.',
  },
  {
    'title': 'Image',
    'short_description':
        'The Image widget displays images from assets, network, or files with customizable size and fit.',
    'description':
        'The Image widget in Flutter is used to display images in your app. It supports loading images from various sources like assets, network, or files. You can customize the image\'s size, fit (e.g., cover, contain), alignment, and apply effects like color filters.',
  },
  {
    'title': 'Inkwell',
    'short_description':
        'The InkWell widget adds a tappable ripple effect to any widget, making it interactive.',
    'description':
        'The InkWell widget in Flutter provides a material "ripple" effect when tapped, making it ideal for interactive elements. It wraps around any widget to detect taps, gestures, and other interactions, offering a visual feedback to the user.',
  },
  {
    'title': 'Input',
    'short_description':
        'Widgets like TextField, Checkbox, and Slider handle user inputs.',
    'description':
        'Input widgets in Flutter allow users to interact with the app. Common input widgets include TextField for text input, Checkbox, Radio, Slider, and Switch for various user selections.',
  },
  {
    'title': 'ListView',
    'short_description':
        'The ListView widget creates a scrollable list of widgets, ideal for displaying many items.',
    'description':
        'The ListView widget in Flutter is a scrollable list of widgets arranged linearly. It’s used to display a large number of items vertically or horizontally, with support for both static and dynamic content, lazy loading, and custom item layouts.',
  },
  {
    'title': 'ListTile',
    'short_description':
        'The ListTile widget creates a structured row with text and optional icons, used for building list items easily.',
    'description':
        'The ListTile widget in Flutter is a single fixed-height row that typically contains text, an optional leading or trailing icon, and is often used in lists. It simplifies creating standard list items with predefined layouts for icons, titles, and subtitles.',
  },
  {
    'title': 'Margin',
    'short_description':
        'Margin adds space outside a widget, separating it from other elements.',
    'description':
        'Margin is a property (typically used in the Container widget) that adds empty space outside the widget\'s boundary, separating it from neighboring elements. This spacing helps with layout and positioning by creating a visual gap around the widget.',
  },
  {
    'title': 'Positioned',
    'short_description': 'Positions a widget inside a Stack',
    'description':
        'Positioned is used inside a Stack to position a widget at a specific place within the stack. You can control placement with properties like top, left, right, and bottom.',
  },
  {
    'title': 'RichText',
    'short_description': 'Displays text with multiple styles.',
    'description':
        'RichText allows for displaying text with multiple styles. You can style different parts of the text differently within a single widget, like changing colors, fonts, or weights.',
  },
  {
    'title': 'Row & Column',
    'short_description':
        'Row: Arranges widgets horizontally & Column: Arranges widgets vertically.',
    'description':
        'The Row and Column widgets in Flutter are used for arranging children widgets in a horizontal (Row) or vertical (Column) layout. Both widgets align their children along the main axis (Row: horizontal, Column: vertical) and can control spacing, alignment, and stretching of the children across the cross axis.',
  },
  {
    'title': 'SharedPreference',
    'short_description':
        'Stores simple key-value data persistently on the device.',
    'description':
        'SharedPreferences is used for storing small amounts of data, such as user preferences or app settings, in key-value pairs. It is ideal for saving simple data like strings, integers, and booleans locally on the device, making the data persistent across app restarts.',
  },
  {
    'title': 'SliverAppBar',
    'short_description':
        'SliverAppBar is a flexible, scrollable app bar in Flutter that expands, collapses, and adjusts as the user scrolls, often used with custom scroll views.',
    'description':
        'The SliverAppBar widget in Flutter is a scrollable app bar that can expand, collapse, and float as the user scrolls. It\'s typically used in scrollable areas, like when working with custom scroll views, offering dynamic behaviors like pinning or floating.',
  },
  {
    'title': 'SnackBar',
    'short_description': 'Shows brief messages at the screen bottom.',
    'description':
        'SnackBar displays a brief message at the bottom of the screen. It can have an action button and automatically disappears after a set duration.',
  },
  {
    'title': 'SplashScreen',
    'short_description':
        'Intro screen shown when the app starts, typically featuring branding or a logo.',
    'description':
        'A splash screen is the initial screen that appears when an app is launched. It usually displays the app\'s logo or branding while the app is loading or initializing. It\'s a brief visual element before the main content is shown.',
  },
  {
    'title': 'Stack',
    'short_description':
        'The Stack widget overlays widgets, positioning them relative to each other for layered layouts.',
    'description':
        'The Stack widget in Flutter allows you to overlay widgets on top of each other. It positions its children relative to the edges of the Stack, making it useful for creating layered or complex UI layouts.',
  },
  {
    'title': 'Text',
    'short_description':
        'A widget used to display styled or unstyled text on the screen, customizable with various formatting options.',
    'description':
        'Used to display a string of text on the screen. You can customize its appearance with various styling options like font size, color, weight, and alignment. It’s commonly used to show static or dynamic content in your app, such as labels, messages, or headings, and plays a crucial role in UI design.',
  },
  {
    'title': 'Wrap',
    'short_description':
        'The Wrap widget arranges children in multiple lines, automatically wrapping when space is limited.',
    'description':
        'The Wrap widget in Flutter arranges its children in multiple horizontal or vertical lines, automatically moving them to the next line when they exceed the available space. It’s ideal for creating responsive layouts where items need to wrap to fit within the screen.',
  }
];
