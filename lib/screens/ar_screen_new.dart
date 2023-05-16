import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ARScreen extends StatefulWidget {
  @override
  _ARScreenState createState() => _ARScreenState();
}

class _ARScreenState extends State<ARScreen> {
  late ArCoreController _arCoreController;
  late ArCoreNode _node;

  @override
  void dispose() {
    _arCoreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ArCoreView(
        onArCoreViewCreated: onArCoreViewCreated,
    );
  }

  void onArCoreViewCreated(ArCoreController controller) {
    _arCoreController = controller;
    final node = ArCoreReferenceNode(
      name: "my_custom_object",
      objectUrl: "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/Duck/glTF/Duck.gltf", // replace with your own file path
      position: vector.Vector3(0, 0, -1), // adjust the position as needed
    );
    _arCoreController.addArCoreNodeWithAnchor(node);
  }

}
