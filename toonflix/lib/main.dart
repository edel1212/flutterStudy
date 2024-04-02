import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// Root Class
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * ℹ️ Root Widget은 항상 MaterialApp 또는 CupertinoApp 반환해야한다.
     *   ㄴ> 각각 MaterialApp(구글), CupertinoApp(애플)의 디자인 시스템이다.
     *   해당 디자인 시스템으로 전체적인 디자인 틀을 잡고 시작하는 것이다.
     * 
     * Flutter 자체가 Google에서 만들었기에 Material가 좀 더 최적화된 디자인이 많다
     */
    return const MaterialApp(
      home: Text('Hello world!!'),
    );
  }
}
