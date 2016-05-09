//
//  ViewController.swift
//  H7Deligate
//
//  Created by Steven Wang on 2016/5/5.
//  Copyright © 2016年 ka666wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate{

    
    
    
    @IBOutlet weak var countLabel: UILabel!
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        print("\(textField.text)")
        print("\(range)")
        print("\(string)")
        
        print("\(textField.text?.characters.count)")
        
        //let tempcount = (textField.text! as NSString).stringByReplacingCharactersInRange(range, withString:)
        
        self.countLabel.text="\((textField.text?.characters.count)! + 1)"
        
        if (textField.text?.characters.count)! + 1 < 10 {
        
        return true
        }
        else {
           return false
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

