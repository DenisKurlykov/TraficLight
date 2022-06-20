//
//  ViewController.swift
//  TraficLight
//
//  Created by Денис Курлыков on 17.06.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOff: CGFloat = 0.3
    private let lightIsOn: CGFloat = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        startButton.layer.cornerRadius = 15
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
    }
    
    @IBAction func startButtonTapped() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
            
        case .red:
            redLight.alpha = lightIsOn
            greenLight.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha  = lightIsOn
            currentLight = .green
        case .green:
            greenLight.alpha  = lightIsOn
            yellowLight.alpha = lightIsOff
            currentLight = .red
        }
    }
}

