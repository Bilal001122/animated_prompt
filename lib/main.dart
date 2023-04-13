import 'package:animated_prompt/animated_prompt.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Prompt'),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return TextButton(
                onPressed: () {
                  showBottomSheet(
                    context: context,
                    builder: (context) {
                      return const AnimatedPrompt(
                        title: 'Thank You for\nyour order',
                        subTitle:
                            'Your order will be delivered\nin 30 minutes, Enjoy!',
                        icon: Icon(
                          Icons.done,
                          color: Colors.white,
                        ),
                        containerIconColor: Colors.green,
                      );
                    },
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                ),
                child: const Text(
                  'Show Prompt',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
