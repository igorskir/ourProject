//
//  ViewController.swift
//  FirstApp
//
//  Created by Pavel on 20.02.17.
//  Copyright © 2017 AppsLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var theTextField: UITextField!
    
    @IBAction func buttonAction(_ sender: Any)
    {
        var myText = theTextField.text
         theLabel.text = myText
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

