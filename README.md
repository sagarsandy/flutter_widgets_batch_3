# Flutter: Working with widgets batch three

### Card
A widget which gives a good elevation with slight rounded corners. If you want corners to be more rounded, we can use shape property with RoundedRectangleBorder class and bordercircularradius property, the more you increase this value, the more rounded corners we get. The shadowColor is a good property to maintain a good elevation.

### Chip
Chips are compact elements that represent an attribute, text, entity, or action. There are different types of chips, some of them are Chip, Input Chip, Choice Chip, Action Chip and Filter Chip. Check code for more info.

### Wrap
This widget, wraps a bunch of widgets into a list, with particular spacing between them. This wrap can have multiple lines either horizantally and vertically. Best example for wrap is, wrapping a 100 chips. We can give spacing between them using "spacing" property and "runSpacing" which is the space between lines. We can align them any direction using the direction and other alignment properties.

### ClipOval
If you don't like the sharp square borders, then use clipoval. It will automatically adjust any child widget to rounded corners depends on the widget height and width. If the width and height are equal, then it will create a circular widget, or else it will clip the borders accordingly, like an egg if it is a rectangle in size.

### ClipPath
ClipPath also works like clip oval but we need to use custom clipper for more customization of clipper.


### ConstrainedBox
If we want to maintain a minimum and maximum width and heights to a widget, then we can use this widget with the help of it's property constraints and it's class BoxConstraints. Suppose a long text widget is inserted in a container widget, then we can use this constrained widget to set minimum and maximum width and height properties.
---


# Flutter Info:
## Getting Started

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
