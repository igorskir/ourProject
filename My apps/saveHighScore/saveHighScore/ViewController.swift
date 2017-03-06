//
//  ViewController.swift
//  saveHighScore
//
//  Created by Pavel on 23.02.17.
//  Copyright © 2017 k.brklyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!

    var Score = 0, Highscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let HighscoreDefault = UserDefaults.standard
        if HighscoreDefault.value(forKey: "Highscore") != nil
        {
            Highscore = HighscoreDefault.value(forKey: "Highscore") as! NSInteger
        }
        highscoreLabel.text = NSString(format: "Highscore: %i", Highscore) as String
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetButon(_ sender: Any)
    {
        Score = 0
        scoreLabel.text = NSString(format: "Score: %i", Score) as String
    }

    @IBAction func countScoreButton(_ sender: Any)
    {
        Score += 1
        scoreLabel.text = NSString(format: "Score: %i", Score) as String
        if Score > Highscore
        {
            Highscore = Score
            highscoreLabel.text = NSString(format: "Highscore: %i", Highscore) as String
            
            let HighscoreDefault = UserDefaults.standard
            HighscoreDefault.setValue(Highscore, forKey: "Highscore")
            HighscoreDefault.synchronize()
        }
       
        
       	
        
    }
    @IBAction func fullResetButton(_ sender: Any) {
        Score = 0
        Highscore = 0
        let HighscoreDefault = UserDefaults.standard
        HighscoreDefault.setValue(Highscore, forKey: "Highscore")
        HighscoreDefault.synchronize()
        highscoreLabel.text = NSString(format: "Highscore: %i", Highscore) as String
        scoreLabel.text = NSString(format: "Score: %i", Score) as String
        
    }
    

}
