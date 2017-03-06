//
//  ViewController.swift
//  passingdata
//
//  Created by Pavel on 22.02.17.
//  Copyright © 2017 k.brklyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showingText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destViewController : ViewTwo = (segue.destination as? ViewTwo)!
        destViewController.labelText = showingText.text!
        
    }


}

