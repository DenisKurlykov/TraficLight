//
//  ViewController.swift
//  TraficLight
//
//  Created by Денис Курлыков on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 50
        redLight.alpha = 0.3
        yellowLight.layer.cornerRadius = 50
        yellowLight.alpha = 0.3
        greenLight.layer.cornerRadius = 50
        greenLight.alpha = 0.3
        
        startButton.layer.cornerRadius = 15
        
    }
    
    @IBAction func startButtonTapped() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
            
        case 0:
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            currentLight += 1
        case 1:
            redLight.alpha = 0.3
            yellowLight.alpha  = 1
            greenLight.alpha  = 0.3
            currentLight += 1
        case 2:
            redLight.alpha  = 0.3
            yellowLight.alpha  = 0.3
            greenLight.alpha  = 1
            currentLight = 0
        
        default :
            currentLight = 0
        
        }
        
        
    }
}

