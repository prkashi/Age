//
//  ViewController.swift
//  Hello World
//
//  Created by Punith Kashi on 12/3/16.
//  Copyright © 2016 PunithRKashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    @IBOutlet var age: UITextField!
    
    @IBOutlet var button: UIButton!
    @IBOutlet var image: UIImageView!
    
    @IBAction func submit(_ sender: Any) {
        
        print("button tapped")

        label.text = "My age is : " + age.text!
        
        age.alpha = 0.00
        
        button.alpha = 0.00
        
        image.alpha = 1.00
        
        //test
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.alpha = 0.00
        
    
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissKeyboard(){
        
        view.endEditing(true)
        
    }


}

