//
//  ContentView.swift
//  ARDice
//
//  Created by Chehak Malhotra on 05/04/23.
//
import ARKit
import RealityKit
import SwiftUI
import FocusEntity

struct RealityKitView: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
       let view = ARView()
        
        
        // Start AR session
        let session = view.session
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = [.horizontal]
        session.run(config)
        
        
        
        // Add coaching overlay
        let coachingOverlay = ARCoachingOverlayView()
        coachingOverlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        coachingOverlay.session = session
        coachingOverlay.goal = .horizontalPlane
        view.addSubview(coachingOverlay)
        
        
        
    
        
        
        // Handle ARSession events via delegate
        context.coordinator.view = view
        session.delegate = context.coordinator
        
        // Handle taps
        view.addGestureRecognizer(
            UITapGestureRecognizer(
                target: context.coordinator,
                action: #selector(Coordinator.handleTap)
            )
        )
        
        
       return view
    }

    func updateUIView(_ view: ARView, context: Context) {
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    class Coordinator: NSObject, ARSessionDelegate {
        weak var view: ARView?
        var focusEntity: FocusEntity?

        func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
            guard let view = self.view else { return }
            debugPrint("Anchors added to the scene: ", anchors)
            self.focusEntity = FocusEntity(on: view, style: .classic(color: .yellow))
        }
        
        @objc func handleTap() {
            guard let view = self.view, let focusEntity = self.focusEntity else { return }

            // Create a new anchor to add content to
            let anchor = AnchorEntity()
            view.scene.anchors.append(anchor)

            // Add a dice entity
            let diceEntity = try! ModelEntity.loadModel(named: "dog")
            let radians = 0.0 * Float.pi / 180.0
            diceEntity.transform.rotation += simd_quatf(angle: radians, axis: SIMD3<Float>(1,0,0))
            diceEntity.scale = [0.005, 0.005, 0.005]
            diceEntity.position = focusEntity.position
            anchor.addChild(diceEntity)
        }
        
    }
    
    
    
    

}






struct ContentView: View {
    var body: some View {
        RealityKitView()
            .ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
