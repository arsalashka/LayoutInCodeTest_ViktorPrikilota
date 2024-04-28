//
//  SceneDelegate.swift
//  LayoutInCodeTest_ViktorPrikilota
//
//  Created by Arsalan on 26.04.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        
        window?.windowScene = windowScene
        window?.rootViewController = LoginController()
        window?.makeKeyAndVisible()
    }
}
