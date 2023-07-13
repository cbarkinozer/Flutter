# Flutter
This repo is for storing code examples used for learning the Flutter framework with Dart Language.  
Flutter is Google's portable UI toolkit for crafting beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.  

## Notes  

### Stateless Widgets
Stateless widgets state cannot change over time.   
The build() function runs only once.   
By using a stateless widget we can change the code and see the result without a rerun which is called a hot reload.   
But we can only use final variables inside a stateless widget.   

### Stateful Widgets
The state can change over time in stateful widgets.  
setState() triggers the build function.  
initState() is called only once when the widget is created.  
Subscribe to streams or any object that could change our widget data.  
The build() function builds the widget tree.  
A build is triggered everytime we use the setState().  
The dispose() function is triggered when the widget/state object is removed.  

### Container versus Padding  
If you need color and margin use Container() else use Padding().  

### Row and Column  
The main axis is the x-axis, and the cross-axis is the y-axis.  

### Import style  
``` import 'package:world_time/home.dart';```

### How flutter routing works?  
A stack structure puts screens on top of each other.  
So when you go to the location screen there is a home screen at the back.  
When you go to the home screen the location screen is removed.  

### To search packages
https://pub.dev/packages?q=sdk%3Aflutter

### To add dependencies
Go to pubspec.yaml > and add the dependency for example:
http: ^1.1.0

### Passing router data
```
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });
```

## Deprecated  
FlatButton is deprecated instead use TextButton.  
RaisedButton is deprecated instead use ElevatedButton.  
