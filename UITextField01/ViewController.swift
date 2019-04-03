//
//  ViewController.swift
//  UITextField01
//
//  Created by D7702_09 on 2019. 4. 3..
//  Copyright © 2019년 csd5766. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Delegate class Connection
        myTextField.clearButtonMode = UITextField.ViewMode.always
        
        myTextField.delegate = self
        
    }

    @IBAction func ButtonPressed(_ sender: Any) {
        
        let inString = myTextField.text! + "Coding"
        myLabel.text = inString
        myTextField.text = ""
        
        
        //키패드의 권한을 박탈
        myTextField.resignFirstResponder()
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //텍스트필드 클리어
        myTextField.resignFirstResponder()
        return true
        
    }
     public func textFieldShouldClear(_ textField: UITextField) -> Bool{
        
        //텍스트 클리어시 배경 노란색변경
        myTextField.backgroundColor = UIColor.yellow
        return true
    }
}

