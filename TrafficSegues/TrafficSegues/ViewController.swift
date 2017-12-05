//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Administrateur on 20/11/2017.
//  Copyright © 2017 Administrateur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var `segueSwitch`: UISwitch!
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
        
            performSegue(withIdentifier: "redToYellowSegue", sender: nil)
        }
    }
    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "redToGreenSegue", sender: nil)
        }
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

