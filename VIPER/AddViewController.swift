//
//  AddViewController.swift
//  VIPER
//
//  Created by Dylan Noteboom on 19-11-15.
//  Copyright © 2015 Dylan Noteboom. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    var delegate: AddViewDelegate? // Presenter
    
    @IBOutlet weak var name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Actions

    @IBAction func savePerson(sender: AnyObject) {
        self.delegate?.addNewPersonTapped(self.name.text!)
    }
    
    @IBAction func cancelButton(sender: AnyObject) {
        self.delegate!.closeAddScreen()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
