import 'dart:html' as html;
import 'dart:js' as js;
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  void startScreenSharing() {
    // This calls a JavaScript function to start screen sharing
    js.context.callMethod('startScreenSharing');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web Screen Sharing'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: startScreenSharing,
          child: Text('Start Screen Sharing'),
        ),
      ),
    );
  }
}
