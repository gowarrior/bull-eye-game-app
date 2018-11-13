//
//  ViewController.swift
//  BullEye
//
//  Created by XYZ on 11/5/18.
//  Copyright © 2018 XYZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert(){
        //print("Hello!")
        let alert = UIAlertController(title: "Hello World!", message: "This is Bull-Eye app", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style:.default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
}

