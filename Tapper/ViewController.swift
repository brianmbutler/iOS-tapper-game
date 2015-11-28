//
//  ViewController.swift
//  Tapper
//
//  Created by Brian M. Butler on 11/27/15.
//  Copyright © 2015 Brian M. Butler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    
    var maxTaps = 0
    var currentTaps = 0
   
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    
    @IBAction func onPlayButtonPressed(sender: UIButton) {
        
        if howManyTxt.text != nil && howManyTxt.text != "" {
            
        logoImg.hidden = true
        howManyTxt.hidden = true
        playBtn.hidden = true
        
        tapBtn.hidden = false
        tapsLabel.hidden = false
       
        maxTaps = Int(howManyTxt.text!)!
        currentTaps = 0
        
        updateTapsLbl()
        
    }
    }
    
    @IBAction func tapBtnTapped(sender: UIButton!) {
        currentTaps++
        updateTapsLbl()
        print("\(currentTaps)")
        
        if isGameOver() {
            restartGame()
        }
    }
    

    
    func restartGame() {
        maxTaps = 0
        howManyTxt.text = ""
        
        logoImg.hidden = false
        howManyTxt.hidden = false
        playBtn.hidden = false
        
        tapBtn.hidden = true
        tapsLabel.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
        return false
    }
    }
    
    func updateTapsLbl() {
        tapsLabel.text = "\(currentTaps) taps"
        }
        
    }


    
    
    
    

