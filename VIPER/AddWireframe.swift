//
//  AddWireframe.swift
//  VIPER
//
//  Created by Dylan Noteboom on 17-11-15.
//  Copyright © 2015 Dylan Noteboom. All rights reserved.
//

import Foundation
import UIKit

class AddWireframe: BaseWireframe, AddOutput {
    
    var rootNavigationController: UINavigationController?
    var output: AddWireframeOutput? // BaseWireframe
    
    class func createWireframeAndPresentOnNavigationController(navigationController: UINavigationController) -> AddWireframe {
        let wireframe: AddWireframe = AddWireframe()
        wireframe.rootNavigationController = navigationController
        wireframe.setupWireframe("Add")
        return wireframe
    }
    
    override func setupWireframe(name: String) {
        super.setupWireframe(name)
        
        let view = self.storyboard?.instantiateInitialViewController() as! AddViewController
        let interactor = AddInteractor()
        let presenter = AddPresenter(view: view, interactor: interactor)
        
        presenter.output = self
        view.delegate = presenter
        
        view.modalPresentationStyle = UIModalPresentationStyle.Popover
        self.rootNavigationController?.presentViewController(view, animated: true, completion: nil)
    }
    
    func closeAndRefreshSignal() {
        self.output!.refreshSignal()
    }
    
    func closeAddScreenSignal() {
        self.rootNavigationController?.topViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}