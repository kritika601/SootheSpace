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

  // final String objectUrl =
  //     "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/Duck/glTF/Duck.gltf";
  //
  //
  // void _addNode() {
  //   _node = ArCoreNode(
  //     shape: ArCoreCube(
  //       materials: [ArCoreMaterial(color: Colors.red)],
  //       size: vector.Vector3(0.2, 0.2, 0.2),
  //     ),
  //     position: vector.Vector3(0, 0, -1),
  //   );
  //   _arCoreController.addArCoreNode(_node);
  // }
  //
  // void _handleOnTap(TapGestureRecognizer tapGestureRecognizer) async {
  //   final List<HitTestResult> hitTestResults = tapGestureRecognizer as List<HitTestResult>;
  //
  //   if (hitTestResults.isNotEmpty) {
  //     final hit = hitTestResults.first;
  //     final position= vector.Vector3(0,0,-1);
  //     final node = ArCoreReferenceNode(
  //       name: "duck",
  //       objectUrl: objectUrl,
  //       position: position,
  //     );
  //     _arCoreController.addArCoreNodeWithAnchor(node);
  //   }
  // }
}
