//
//  ViewController.swift
//  FormScrollView
//
//  Created by Administrateur on 05/12/2017.
//  Copyright © 2017 Administrateur. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var lblDate: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    self.contentView.autoresizingMask = UIViewAutoresizing(rawValue: UIViewAutoresizing.RawValue(UInt8(UIViewAutoresizing.flexibleWidth.rawValue) | UInt8(UIViewAutoresizing.flexibleHeight.rawValue)))
    
    self.contentView.frame = CGRect(x: 0, y: 0, width: self.scrollView.frame.size.width, height: self.contentView.frame.size.height)
        
    self.scrollView.contentSize = self.contentView.frame.size
        
    self.scrollView.addSubview(self.contentView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dateChanger(_ sender: Any) {
        let dateFormatter = DateFormatter()
    
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .full
        
        self.lblDate.text = dateFormatter.string(from: datePicker.date)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if let linkedTextField: LinkedTextField = textField as? LinkedTextField
        {
            if( linkedTextField.nextField != nil )
            {
                linkedTextField.nextField?.becomeFirstResponder()
            }
            else
            {
                linkedTextField.resignFirstResponder()
            
            }
        }
        
        return true
    }
}

