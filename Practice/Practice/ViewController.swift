//
//  ViewController.swift
//  Practice
//
//  Created by Kaitlyn Summers on 3/27/19.
//  Copyright © 2019 Kaitlyn Summers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func enterButton(_ sender: Any) {
        textView.text = "Hello\(nameField.text!)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameField.resignFirstResponder()
    }
    
}

extension ViewController : UITextViewDelegate {

    func textFieldShouldReturn (_ textField: UITextField) -> Bool {textField.resignFirstResponder ()
        return true
    }
}
