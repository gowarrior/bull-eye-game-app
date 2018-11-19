//
//  ViewController.swift
//  BullEye
//
//  Created by XYZ on 11/5/18.
//  Copyright © 2018 XYZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue  = 0
    var targetValue = 0
    var score =  0
    var round = 0
    
    @IBOutlet weak var slider : UISlider!
    @IBOutlet weak var targetLabel : UILabel!
    @IBOutlet weak var scoreLabel : UILabel!
    @IBOutlet weak var roundLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
    }

    @IBAction func showAlert(){
        
        let difference = abs(targetValue - currentValue) //difference is local var
        var points = 100 - difference // local vari
        
        let title : String //local vari
        if difference == 0 {
            title = "Perfect"
            points += 100
        } else if difference < 5 {
            if difference == 1{
                points += 50
            }
            title = "You almost had it"
        } else if difference < 10 {
            title = "Pretty good!"
        } else {
            title = "Not even close..."
        }
        score += points //instance var
        let message = "You scored \(points) points" //local var
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        //UIAlertAction for setting up the button
        let action = UIAlertAction(title: "OK", style:.default, handler: {
            action in //take action as one parameter
            self.startNewRound()
        }) //closure works like an inline method or method w/t a name
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        //startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider){
        //print("The value of the slider is now : \(slider.value)")
        
        let roundedValue = slider.value.rounded()
        //print("The value of the slider is now : \(roundedValue)")
        currentValue = Int(roundedValue)
    }
    
    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        round += 1
        updateLabels()

    }//
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
//    @IBAction func startOver(){
//        
//    }
}

