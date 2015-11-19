//
//  PersonListService.swift
//  VIPER
//
//  Created by Dylan Noteboom on 17-11-15.
//  Copyright © 2015 Dylan Noteboom. All rights reserved.
//

import Foundation
import UIKit

class PersonListService {
    
    func getPersonsWithBlock(result: (persons: [Person]) -> Void) {
        var persons: [Person] = [Person]()
        
        let person1 = Person()
        person1.name = "piet"
        
        persons.append(person1)
        
        result(persons: persons)
    }
}