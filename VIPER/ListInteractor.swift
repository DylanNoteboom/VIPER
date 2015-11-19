//
//  ListInteractor.swift
//  VIPER
//
//  Created by Dylan Noteboom on 17-11-15.
//  Copyright © 2015 Dylan Noteboom. All rights reserved.
//

import Foundation

class ListInteractor {
    
    let service: PersonListService = PersonListService()
    
    func getItemsWithBlock(result: (persons: [Person]) -> Void) {
        service.getPersonsWithBlock { (persons) -> Void in
            result(persons: persons)
        }
    }
}