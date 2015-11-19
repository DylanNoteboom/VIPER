//
//  ListPresenter.swift
//  VIPER
//
//  Created by Dylan Noteboom on 17-11-15.
//  Copyright © 2015 Dylan Noteboom. All rights reserved.
//

import Foundation

class ListPresenter: ListViewDelegate {
    
    var interactor: ListInteractor!
    var view: ListTableViewController
    var output: ListOutput? // ListWireframe
    
    init(view: ListTableViewController, interactor: ListInteractor) {
        self.view = view
        self.view.delegate = self
        self.interactor = interactor
        self.refreshData()
    }
    
    func refreshData() {
        print("refreshData")
        self.fetchListData()
    }
    
    func fetchListData() {
        interactor.getItemsWithBlock { (persons) -> Void in
            if var persons: [Person] = persons {
                self.view.showData(persons)
            }
        }
    }
    
    func didPressAddNewPerson() {
        print("Presenter")
        self.output?.addNewPersonSignal()
    }
    
}