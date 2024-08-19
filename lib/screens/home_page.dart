// ignore_for_file: avoid_web_libraries_in_flutter

// ignore: unused_import
import 'dart:html' as html;
import 'dart:js' as js;
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void startScreenSharing() {
    // This calls a JavaScript function to start screen sharing
    js.context.callMethod('startScreenSharing');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Web Screen Sharing'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: startScreenSharing,
          child: const Text('Start Screen Sharing'),
        ),
      ),
    );
  }
}
