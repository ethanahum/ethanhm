//
//  ViewController.swift
//  RPS
//
//  Created by Administrateur on 18/11/2017.
//  Copyright © 2017 Administrateur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var robotLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var fistButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    @IBAction func rockAttack(_ sender: Any) {
    }
    @IBAction func paperAttack(_ sender: Any) {
    }
    @IBAction func scissorsAttack(_ sender: Any) {
    }
    @IBAction func playAgainAction(_ sender: Any) {
    }
    
    var gamestate:GameState!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        gamestate = GameState.start
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func UpdateUI() {
        view.backgroundColor = UIColor.blue
        if let mygame = gamestate{
            switch mygame {
            case .start:
                view.backgroundColor = UIColor.blue
                robotLabel.text = "🤖"
                playAgainButton.isHidden = true
                scissorsButton.isEnabled = true
                scissorsButton.isHidden = false
                fistButton.isEnabled = true
                fistButton.isHidden = false
                paperButton.isEnabled = true
                paperButton.isHidden = false
            case .draw:
                view.backgroundColor = UIColor.red
            case .win:
                view.backgroundColor = UIColor.green
            case .lose:
                view.backgroundColor = UIColor.black
            }
        }
        if let mygame = gamestate {
            switch mygame {
            case .start:
                statusLabel.text = "Started"
            case .win:
                statusLabel.text = "You won!"
            case .lose:
                statusLabel.text = "You lost"
            case .draw:
                statusLabel.text = "nobody won"
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


