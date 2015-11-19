//
//  AddPresenter.swift
//  VIPER
//
//  Created by Dylan Noteboom on 19-11-15.
//  Copyright © 2015 Dylan Noteboom. All rights reserved.
//

import Foundation

class AddPresenter: AddViewDelegate {
    
    var interactor: AddInteractor?
    var view: AddViewController?
    var output: AddOutput? // AddWireframe
    
    init(view: AddViewController, interactor: AddInteractor) {
        self.view = view
        self.view!.delegate = self
        self.interactor = interactor
    }
    
    func addNewPersonTapped() {
        print("addNewPersonTapped")
    }
    
    func closeAddScreen() {
        self.output?.closeAddScreenSignal()
    }
}