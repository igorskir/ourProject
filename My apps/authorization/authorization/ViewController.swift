//
//  ViewController.swift
//  authorization
//
//  Created by Pavel on 22.02.17.
//  Copyright © 2017 k.brklyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var theLabel: UILabel!
    @IBAction func enter(_ sender: Any)
    {
        let usrn = "swift"
        let pass = "sw"
        if username.text == usrn && password.text == pass
        {
            theLabel.text = "Successful"
            theLabel.backgroundColor = UIColor.green
        }
        else
        {
            theLabel.text = "Failed"
            theLabel.backgroundColor = UIColor.red
        }
        username.resignFirstResponder()
        password.resignFirstResponder()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

