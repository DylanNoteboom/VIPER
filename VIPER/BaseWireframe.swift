//
//  BaseWireframe.swift
//  VIPER
//
//  Created by Dylan Noteboom on 17-11-15.
//  Copyright © 2015 Dylan Noteboom. All rights reserved.
//

import Foundation
import UIKit

class BaseWireframe: NSObject {
    
    var storyboard: UIStoryboard?
    
    func setupWireframe(name: String) {
        self.storyboard = UIStoryboard(name: name, bundle: nil)
    }
    
}