//
//  ViewController.swift
//  TraficLight
//
//  Created by Денис Курлыков on 17.06.2022.
//

import UIKit

enum CurrentLight {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
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
            
        case .red:
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            currentLight = .yellow
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha  = 1
            greenLight.alpha  = 0.3
            currentLight = .green
        case .green:
            redLight.alpha  = 0.3
            yellowLight.alpha  = 0.3
            greenLight.alpha  = 1
            currentLight = .red
        }
        
        
    }
}

