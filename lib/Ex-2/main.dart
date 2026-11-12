import 'package:flutter/material.dart';
import 'custom_button.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom buttons'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 1. Primary button
            CustomButton(
              label: 'Submit',
              icon: Icons.check,
            ),

            // 2. Secondary button with icon on the right
            CustomButton(
              label: 'Time',
              icon: Icons.access_time,
              iconPosition: IconPosition.right,
              type: ButtonType.secondary,
            ),

            // 3. Disabled button with icon on the right
            CustomButton(
              label: 'Account',
              icon: Icons.account_tree,
              iconPosition: IconPosition.right,
              type: ButtonType.disabled,
            ),
          ],
        ),
      ),
    );
  }
}