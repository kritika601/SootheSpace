import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/material.dart';

class ar extends StatefulWidget {
  const ar({Key? key}) : super(key: key);

  @override
  State<ar> createState() => _arState();
}

class _arState extends State<ar> {
  late ARSessionManager arSessionManager;
  late ARObjectManager arObjectManager;

  ARNode? localObject;
  ARNode? webObject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(191, 186, 255, 100),
        title: Text(
          'SootheSpace',
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontSize: 35,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.8,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: ARView(onARViewCreated: onARViewCreated)
                )
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        onLocalObjectButtonPressed();
                      },
                      child: const Text("Add/remove local object"),
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        onWebObjectButtonPressed();
                      },
                      child: const Text("Add/remove web object"),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }


  void onARViewCreated(ARSessionManager arSessionManager,
      ARObjectManager arObjectManager, ARAnchorManager arAnchorManager,
      ARLocationManager arLocationManager) {
    this.arSessionManager = arSessionManager;
    this.arObjectManager = arObjectManager;
    this.arSessionManager.onInitialize(
      showFeaturePoints: false,
      showPlanes: true,
      showWorldOrigin: true,
      handleTaps: false,
    );

    this.arObjectManager.onInitialize();
  }

  void onLocalObjectButtonPressed() async {
    if (localObject != null) {
      arObjectManager.removeNode(localObject!);
      localObject = null;
    }
    else {
      var newNode = ARNode(
          type: NodeType.fileSystemAppFolderGLTF2, uri: "assets/dog.gltf");

      bool? didAddLocalNode = await arObjectManager.addNode(newNode);
      if (didAddLocalNode!) {
        localObject = newNode;
      }
      else {
        localObject = null;
      }
    }
  }

  void onWebObjectButtonPressed() async {
    if (webObject != null) {
      arObjectManager.removeNode(webObject!);
      webObject = null;
    }
    else {
      var newNode = ARNode(type: NodeType.webGLB,
          uri: "https://github.com/KhronosGroup/glTF-Sample-Models/blob/master/2.0/Fox/glTF-Binary/Fox.glb");

      bool? didAddWebNode = await arObjectManager.addNode(newNode);
      if (didAddWebNode!) {
        webObject = newNode;
      }
      else {
        webObject = null;
      }
    }
  }
}

