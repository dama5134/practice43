import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/push': (context) => PushScreen(),
        '/pop': (context) => PopScreen(),
        '/push_and_remove_until': (context) => PushAndRemoveUntilScreen(),
        '/push_named_and_remove_until': (context) =>
            PushNamedAndRemoveUntilScreen(),
        '/push_replacement': (context) => PushReplacementScreen(),
        '/push_replacement_named': (context) => PushReplacementNamedScreen(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главный экран'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/push');
              },
              child: Text('Push'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Pop'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PushAndRemoveUntilScreen()),
                    (route) => false);
              },
              child: Text('Push and Remove Until'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/push_named_and_remove_until', (route) => false);
              },
              child: Text('Push Named and Remove Until'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PushReplacementScreen()));
              },
              child: Text('Push Replacement'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, '/push_replacement_named');
              },
              child: Text('Push Replacement Named'),
            ),
          ],
        ),
      ),
    );
  }
}

class PushScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Push Screen'),
      ),
      body: Center(
        child: Text('Экран, открытый при помощи Navigator.push'),
      ),
    );
  }
}

class PopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop Screen'),
      ),
      body: Center(
        child: Text('Экран, открытый при помощи Navigator.pop'),
      ),
    );
  }
}

class PushAndRemoveUntilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Push and Remove Until Screen'),
      ),
      body: Center(
        child: Text('Экран, открытый при помощи Navigator.pushAndRemoveUntil'),
      ),
    );
  }
}

class PushNamedAndRemoveUntilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Push Named and Remove Until Screen'),
      ),
      body: Center(
        child: Text(
            'Экран, открытый при помощи Navigator.pushNamedAndRemoveUntil'),
      ),
    );
  }
}

class PushReplacementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Push Replacement Screen'),
      ),
      body: Center(
        child: Text('Экран, открытый при помощи Navigator.pushReplacement'),
      ),
    );
  }
}

class PushReplacementNamedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Push Replacement Named Screen'),
      ),
      body: Center(
        child:
            Text('Экран, открытый при помощи Navigator.pushReplacementNamed'),
      ),
    );
  }
}
