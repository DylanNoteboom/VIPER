//
//  AddView.swift
//  VIPER
//
//  Created by Dylan Noteboom on 19-11-15.
//  Copyright © 2015 Dylan Noteboom. All rights reserved.
//

import Foundation

protocol AddViewDelegate {
    func addNewPersonTapped(name: String)
    func closeAddScreen()
}