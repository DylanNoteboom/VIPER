//
//  ListWireframe.swift
//  VIPER
//
//  Created by Dylan Noteboom on 17-11-15.
//  Copyright © 2015 Dylan Noteboom. All rights reserved.
//

import Foundation
import UIKit

class ListWireframe: BaseWireframe, ListOutput, AddWireframeOutput {
    
    var rootNavigationController: UINavigationController?
    var output: ListWireframeOutput? // BaseWireframe
    var listPresenter: ListPresenter?
    
    class func createWireframe() -> ListWireframe {
        let wireframe: ListWireframe = ListWireframe()
        wireframe.setupWireframe("List")
        return wireframe
    }
    
    override func setupWireframe(name: String) {
        super.setupWireframe(name)
        
        self.rootNavigationController = self.storyboard?.instantiateInitialViewController() as? UINavigationController
        
        let view = self.rootNavigationController?.viewControllers.first as? ListTableViewController
        let interactor = ListInteractor()
        self.listPresenter = ListPresenter(view: view!, interactor: interactor)
        
        self.listPresenter!.output = self
        view!.delegate = self.listPresenter
    }
    
    func addNewPersonSignal() {
        print("Wireframe")
        self.output?.openNewPersonFlowSignal()
    }
    
    func refreshSignal() {
        self.listPresenter!.refreshData()
    }
}