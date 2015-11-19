//
//  PersonApp.swift
//  VIPER
//
//  Created by Dylan Noteboom on 18-11-15.
//  Copyright © 2015 Dylan Noteboom. All rights reserved.
//

import Foundation
import UIKit

class PersonApp: ListWireframeOutput {
    
    var window: UIWindow?
    var homeWireframe: ListWireframe?
    var addNewPersonWireframe: AddWireframe?
    
    class func createApp() -> PersonApp {
        let new: PersonApp = PersonApp()
        return new
    }
    
    init() {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.showStartingPoint()
    }
    
    func showStartingPoint() {
        let wireframe = ListWireframe.createWireframe()
        wireframe.output = self
        self.homeWireframe = wireframe
        self.window?.rootViewController = wireframe.rootNavigationController
        self.window?.makeKeyAndVisible()
    }
    
    func openNewPersonFlowSignal() {
        print("PersonApp")
        
        self.addNewPersonWireframe = AddWireframe.createWireframeAndPresentOnNavigationController(self.homeWireframe!.rootNavigationController!)
        self.addNewPersonWireframe?.output = self.homeWireframe
    }
}