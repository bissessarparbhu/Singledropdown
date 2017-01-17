//
//  ViewController.swift
//  dropdownMenu1
//
//  Created by Parbhu Bissessar on 7/29/16.
//  Copyright © 2016 Parbhu Bissessar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textBox: UITextField!
    @IBOutlet weak var dropDown: UIPickerView!
    //create list
    var list = ["1","2","3"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //you can copy and paste this
    
    func numberOfComponentsInPickerView(_ pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return list.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
        self.view.endEditing(true)
        return list[row]
        
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.textBox.text = self.list[row]
        self.dropDown.isHidden = true
        
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
    
        if textField == self.textBox {
            self.dropDown.isHidden = false
        //if you dont want the users to se the keyboard type:
            
            textField.endEditing(true)
        }
    
    //thanks for watching /// more vids coming....
    }
    
    

}

