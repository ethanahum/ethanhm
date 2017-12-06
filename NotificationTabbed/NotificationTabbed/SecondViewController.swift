//
//  SecondViewController.swift
//  NotificationTabbed
//
//  Created by Administrateur on 06/12/2017.
//  Copyright © 2017 Administrateur. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var messageReceive: UILabel!
    
    var message: String?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        NotificationCenter.default.addObserver(self, selector: #selector(messageReceived(_:)), name: NSNotification.Name(rawValue: "MessageToViewController2"), object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (self.message != nil)
        {
            self.lblmess.text = self.message
            self.message = nil
        }
        
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector : #selector(messageReceived(_:)), name: NSNotification.Name(rawValue: "MessageToViewController2"), object: nil)
    }
    
    @objc func messageReceived(_ notification: NSNotification)
    {
        let txtMessage : String = notification.object as! String
        print(txtMessage)
        
        if (self.mess.text != nil) {
            
            self.messageReceive.text = "message was received on second controller"
            
        } else
        {
            self.message = "message was received on second controller"
        }
    }
}

