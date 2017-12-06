//
//  FirstViewController.swift
//  NotificationTabbed
//
//  Created by Administrateur on 06/12/2017.
//  Copyright © 2017 Administrateur. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var txtFieldMessage: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessage(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "MessageToViewController2"), object: self.txtFieldMessage.text)
    }
    
}

